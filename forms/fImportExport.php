<link rel="stylesheet" type="text/css" href="style/ImportExport.css" />
<link rel="stylesheet" type="text/css" href="style/sunny/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="scripts/jquery-ui-1.8.16.js"></script>
<script type="text/javascript" src="scripts/fImportExport.js"></script>

<form id="fImport" class="fImport" enctype="multipart/form-data" action="ajax/uploader.php" method="POST">
    <p>При импортировании все данные, которые есть в системе, будут удалены и заменены на новые.
    <input type="button" onclick="Import();" value="Восстановить данные по умолчанию" /></p>
	<input type="hidden" name="MAX_FILE_SIZE" value="30000">
    <p>Выберите файл для импорта<input type="file" name="uploadfile"></input> <input type=submit value=Загрузить /> </p>
</form>

<form id="fExport" class="fExport">
    <p>Экспорт списка художников и списка изделий.</p>
<div>
    <p><input type="checkbox" name="export_settings[1]" value="Maters" checked>Художники</input></p>
</div>
<div>
    <p><input type="checkbox" name="export_settings[2]" value="Items" checked>Изделия</input></p>
</div>
<div>
    <p><input type="checkbox" name="export_settings[3]" value="History" checked>История платежей</input></p>
    <label for="from">c</label><input id="from" type="text"></input>
    <label for="to">по</label><input id="to" type="text"></input>
</div>
<div>
    <p><input type="checkbox" name="export_settings[4]" value="Materials" checked>Список заготовок</input></p>
</div>
<br>
<p><input type="button" onclick="Export();" value="Экспортировать данные в файл" /></p>
</form>