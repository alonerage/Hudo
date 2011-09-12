<?php
define('ROOT', '../modules/');
require_once ROOT . 'constants.php';
require_once ROOT . 'database.class.php';
$oDB = new Database($aDatabase['host'], $aDatabase['user'], $aDatabase['pwd'], $aDatabase['name']);

$sMaster = $oDB->selectField('
    SELECT `master_fio` 
        FROM `masters`
        WHERE `master_fio` = "' . $_POST['fio'] . '"'
);

if ($sMaster == "") {
    $iInsert = $oDB->insert('
        INSERT INTO `masters`
            SET `master_fio` = "' . $_POST['fio'] . '",
            `phone` = "' . $_POST['phone'] . '"'
    );

    if ($iInsert != 0)
        echo "Информация\r\n>> Мастер добавлен";
    else
    {
        echo "Ошибка базы данных\r\n";
        echo '>> ' . $oDB->getError();
    }
} else {
    echo "Ошибка\r\n";
    echo '>> Подобная запись о мастере уже есть в БД';
}