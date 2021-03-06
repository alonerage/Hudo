<?php
define('ROOT', '../modules/');
require_once ROOT . 'constants.php';
require_once ROOT . 'database.class.php';
$oDB = new Database($aDatabase['host'], $aDatabase['user'], $aDatabase['pwd'], $aDatabase['name']);

if( (isset($_POST['m_id'])) && ($_POST['m_id'] != 0) )
{
	$uMaster = $oDB->query('
    UPDATE `masters` 
        SET `master_fio` = "' . $_POST['fio'] . '",
            `phone` = "' . $_POST['phone'] . '"
        WHERE `m_id` = "' . $_POST['m_id'] . '"'
    );
    if ($uMaster != 0)
	  echo 'Информация о ' . $_POST['fio'] . ' обновлена';
    else
    {
        echo '<b>Ошибка базы данных</b><br />';
        echo $oDB->getError();
    }	  
	exit();
}

$sMaster = $oDB->selectField('
    SELECT `master_fio` 
        FROM `masters`
        WHERE `master_fio` = "' . $_POST['fio'] . '"'
);

if ($sMaster == '') {
    $iInsert = $oDB->insert('
        INSERT INTO `masters`
            SET `master_fio` = "' . $_POST['fio'] . '",
            `phone` = "' . $_POST['phone'] . '"'
    );

    if ($iInsert != 0)
        echo 'Мастер добавлен';
    else
    {
        echo '<b>Ошибка базы данных</b><br />';
        echo $oDB->getError();
    }
} else {
    echo '<b>Ошибка</b><br />';
    echo 'Подобная запись о мастере уже есть в БД';
}
