<?php
if ( (!isset ($_SESSION['username'])) || ($_SESSION['username'] == '') )
    session_start(); 
define('ROOT', '../modules/');
require_once ROOT . 'constants.php';
require_once ROOT . 'database.class.php';
$oDB = new Database($aDatabase['host'], $aDatabase['user'], $aDatabase['pwd'], $aDatabase['name']);

$iPaymentNum = $oDB->selectField('
               SELECT `payment_number` 
               FROM `payments_history`
               ORDER BY `payment_number` DESC
');
$iPaymentNum++; //номер добавляемого плана больше последнего на один

$c = 1;
$k = $_POST['iPaymentCount'];
for ($i = 1; $i <= $k; $i++)
{
    if ($_POST['payment' . $i])
    {
        $jsonPayment = str_replace("\\", "", $_POST['payment' . $i]);
        $aPayment = json_decode($jsonPayment, true);
        
        $sType = $oDB->selectField('
            SELECT `type_name`
                FROM `types`
                WHERE `t_id` = ' . $aPayment['type']
        );

        $sCategory = $oDB->selectField('
            SELECT `category_name`
                FROM `categories`
                WHERE `c_id` = ' . $aPayment['category']
        );

        $sItem = $oDB->selectField('
            SELECT `item_name`
                FROM `items`
                WHERE `i_id` = ' . $aPayment['item']
        );

        $iInsert = $oDB->insert('
            INSERT INTO `payments_history`
                SET `master_id`  = ' . $aPayment['fio'] . ',
                `payment_number` = ' . $iPaymentNum . ',
                `type_name`      = "' . $sType . '",
                `category_name`  = "' . $sCategory . '",
                `item_name`      = "' . $sItem  . '",
                `amount`         = ' . $aPayment['amount'] . ',
                `price`          = ' . $aPayment['price'] . ',
                `total_price`    = ' . $_POST['total_cost'] . ',
                `comment_text`   = "' . $aPayment['comment'] . '",
                `comment_author` = "' . $_SESSION['username'] . '",
                `date`           = UNIX_TIMESTAMP()'
        );
        
        if ($iInsert != 0) {
            echo 'Платеж ' . $c . ' добавлен<br />';
            $c++;
        } else {
            echo '<b>Ошибка базы данных</b><br />';
            echo $oDB->getError();
            break;
        }
        /*добавление в план*/
        $sPlanNum = $oDB->selectField('
            SELECT `plan_number`
            FROM `plans`
            WHERE `item_id` = '. $aPayment['item'] . '
            AND `status` = 0
            ORDER BY `date` ASC
        ');
        $sPlanMade = $oDB->selectField('
            SELECT `amount_made`
            FROM `plans`
            WHERE `plan_number` = ' . $sPlanNum . '
            AND `status` = 0
            AND `item_id` = ' . $aPayment['item'] . '
            ORDER BY `date` ASC
        ');
        $sPlanMake = $oDB->selectField('
            SELECT `amount_to_make`
            FROM `plans`
            WHERE `plan_number` = ' . $sPlanNum . '
            AND `status` = 0
            AND `item_id` = ' . $aPayment['item'] . '
            ORDER BY `date` ASC
        ');        
        if($sPlanNum != 0){
			$dif = $sPlanMake - $sPlanMade;
			$new_value = $sPlanMade + $aPayment['amount'];

			if($dif > $new_value){
              $uPlan = $oDB->query('
                UPDATE `plans`
                SET `amount_made` =  ' . $new_value . '
                    
                WHERE `plan_number` = ' . $sPlanNum . '
                AND `item_id` = ' . $aPayment['item'] . '
                ORDER BY `date` ASC
              ');
            }
            else{
				$uPlan = $oDB->query('
					UPDATE `plans`
					SET `amount_made` =  ' . $sPlanMake . ',
					    `status` = 1
					WHERE `plan_number` = ' . $sPlanNum . '
					AND `item_id` = ' . $aPayment['item'] . '
					ORDER BY `date` ASC
				');
				$left = $new_value - $sPlanMake;
				$sLeftItems = $oDB->selectField('
				    SELECT `amount` 
				    FROM `left_items`
				    WHERE `item_id` = ' . $aPayment['item'] . '
				');
				if($sLeftItems != 0)
				    $uLeftItems = $oDB->query('
				        UPDATE `left_items`
				        SET `amount` = ' . $sklad = $left + $sLeftItems . '
				        WHERE `item_id` = ' . $aPayment['item'] . '
				    ');
				else
				    $uLeftItems = $oDB->insert('
				        INSERT INTO `left_items`
				        SET `item_id` = ' . $aPayment['item'] . ',
				            `amount` = ' . $left . '
				    ');
			}
		}
        else{  //если плана нет - просто добавляем в резерв
			$iLeftItems = $oDB->selectField('
				    SELECT `amount` 
				    FROM `left_items`
				    WHERE `item_id` = ' . $aPayment['item'] . '
				');
				if($iLeftItems != 0) {
				    $sklad = $aPayment['amount'] + $iLeftItems;
				    $sLeftItems = $oDB->query('
				        UPDATE `left_items`
				        SET `amount` = ' . $sklad . '
				        WHERE `item_id` = ' . $aPayment['item'] . '
				    ');
				}
				else
				    $sLeftItems = $oDB->insert('
				        INSERT INTO `left_items`
				        SET `item_id` = ' . $aPayment['item'] . ',
				            `amount` = ' . $aPayment['amount'] . '
				    ');
		}
    }
}
