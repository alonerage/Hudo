<?php
define('ROOT', '../modules/');
require_once ROOT . 'constants.php';
require_once ROOT . 'database.class.php';
$oDB = new Database($aDatabase['host'], $aDatabase['user'], $aDatabase['pwd'], $aDatabase['name']);

$num = 0;

$aMasters = $oDB->selectTable('
    SELECT `m_id`, `master_fio`, `phone`
        FROM `masters`
        WHERE LOCATE("' . $_POST['s_fio'] . '" , `master_fio`)
        AND LOCATE("' . $_POST['s_phone'] . '" , `phone`)
        ORDER BY `master_fio` ASC'
);

$sQuery = 'SELECT *
    FROM `payments_history`
    WHERE (0';   

foreach ($aMasters as $iMaster => $aMaster)
    $sQuery .= '
        OR `master_id` = ' . $aMaster['m_id'];
$sQuery .= ')';

if ($_POST['s_date'] != 0) {
    if ($_POST['s_date'] == 1)
        $sQuery .= '
            AND FROM_UNIXTIME(`date`, "%d/%m/%Y") = "' . date('d/m/Y') . '"';
    else
        if ($_POST['s_date'] == 2)
            $sQuery .= '
                AND FROM_UNIXTIME(`date`, "%d/%m/%Y") = "' . date('d/m/Y', strtotime('-1 day')) . '"';
        else
            if ($_POST['s_date'] == 3)
                $sQuery .= '
                    AND FROM_UNIXTIME(`date`, "%d/%m/%Y") > "' . date('d/m/Y', strtotime('-7 day')) . '"';
            else
                if ($_POST['s_date'] == 4)
                    $sQuery .= '
                        AND FROM_UNIXTIME(`date`, "%m/%Y") = "' . date('m/Y') . '"';
                else
                    if ($_POST['s_date'] == 5)
                        $sQuery .= '
                            AND FROM_UNIXTIME(`date`, "%d/%m/%Y") = "' . $_POST['datepicker'] . '"';        
}

if ($_POST['v_price'] != '') {
    if ($_POST['s_price'] == 0)
        $sQuery .= '
            AND `price` > ' . $_POST['v_price'];
        else
            if ($_POST['s_price'] == 1)
                $sQuery .= '
                    AND `price` < ' . $_POST['v_price'];
            else
                if ($_POST['s_price'] == 2)
                    $sQuery .= '
                        AND `price` = ' . $_POST['v_price'];
}

$sQuery .= '
    ORDER BY `h_id` ASC';

$aPayments = $oDB->selectTable($sQuery);

if (count($aPayments) > 0) {
    $sTable = '<table class="searchResult">';

    foreach ($aPayments as $iPayment => $aPayment) {
        $sMaster = $oDB->selectField('
            SELECT `master_fio`
                FROM `masters`
                WHERE `m_id` = ' . $aPayment['master_id']
        );

        if ($iPayment % 2 == 0)
            $sRowColor = '#bbbbbb';
        else
            $sRowColor = '#ffffff';
            
        if( $aPayment['payment_number'] != $num )//отделение по номеру платежа
            $num = $aPayment['payment_number'];
        else {
            $aPayment['payment_number'] = '';
            $aPayment['total_price'] = '';
		}

        if( ($aPayment['payment_number'] != '') && ($iPayment == 0) )
            $sTable .= '<tr><td><TABLE class="searchResult">';
        if( ($aPayment['payment_number'] != '') && ($iPayment != 0) )
            $sTable .= '</TABLE></td></tr>&nbsp;<tr><td></td></tr><tr><td><TABLE class="searchResult">';
        if($aPayment['payment_number'] != '')
            $sTable .= '
            <tr bgcolor="#face8d">
                <td width="30%"><b>' . $aPayment['payment_number'] . '</b></td>
                <td width="30%"><b>' . $sMaster . '</b></td>
                <td width="10%"><b>' . $aPayment['total_price'] . '</b></td>
                <td width="15%"><b>' . date('d.m.Y', $aPayment['date']) . '</b></td>
                <td width="15%"><i>' . $aPayment['comment_author'] . '</i></td>
            </tr>';        
        $sTable .= '
            <tr bgcolor="' . $sRowColor . '">
                <td>' . $aPayment['type_name'] . ' / ' . $aPayment['category_name'] . ' / ' . $aPayment['item_name'] . '</td>
                <td>' . $aPayment['amount'] . '</td>
                <td>' . $aPayment['price'] . '</td>
                <td></td>
                <td>' . $aPayment['comment_text'] . '</td>
            </tr>';
    }
    $sTable .= '
        </tr></td></TABLE></table>';
    //print_r($aPayments);
    echo $sTable;
} else
    echo '<p>Поиск не дал результатов</p>';
