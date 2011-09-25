<link rel="stylesheet" type="text/css" href="style/fControl.css" />
<script type="text/javascript" src="scripts/fControl.js"></script>
<link rel="stylesheet" type="text/css" href="style/sunny/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="scripts/jquery-ui-1.8.16.js"></script>

<?php
define('ROOT', '../modules/');
require_once ROOT . 'constants.php';
require_once ROOT . 'database.class.php';
$oDB = new Database($aDatabase['host'], $aDatabase['user'], $aDatabase['pwd'], $aDatabase['name']);
?>

<form id="ItemControl" class="fControl">
  <div>
    <p>Здесь можно добавить тип, категорию и само изделие, а также указать его стоимость.</p>
	  <div id="loaded">
	    <SELECT size="5" class="multiselect" id="mType" onChange="document.getElementById('atype').value = this.options[this.selectedIndex].value">
	      <?php for($i = 0; $i < 10; $i++) echo "<option value = $i>$i</option>"; ?>
	    </SELECT>
		<SELECT size="5" class="multiselect" id="mCategory" onChange="document.getElementById('acategory').value = this.options[this.selectedIndex].value">
	      <?php for($i = 0; $i < 10; $i++) echo "<option value = $i>$i</option>"; ?>
	    </SELECT>
		<SELECT size="5" class="multiselect" id="mItem" onChange="document.getElementById('aitem').value = this.options[this.selectedIndex].value">
	      <?php for($i = 0; $i < 10; $i++) echo "<option value = $i>$i</option>"; ?>
	    </SELECT>
	  </div>
	  
	  <div id="edited">
	    <label for="atype">Тип</label><input type="text" id="atype"></input>
	    <label for="acategory">Категория</label><input type="text" id="acategory"></input>
	    <label for="aitem">Изделие</label><input type="text" id="aitem"></input>
	    <label for="aprice">Цена</label><input type="text" id="aprice"></input>
        <input type="button" value="Добавить" onClick="ItemAdd();"/>
	</div>
  </div>
</form>

<form id="MasterControl" class="fControl">
  <div class="cMasters">
    <p>Здесь можно отредактировать мастеров</p>
    <p>
	  <label>Фио:</label>
	  <input type="text" id="fio"></input>
	  <SELECT onChange="document.getElementById('fio').value = this.options[this.selectedIndex].value">
	    <?php for($i = 0; $i < 10; $i++) echo "<option value = $i>$i</option>"; ?>
	  </SELECT>
	</p>
    <p><label>Телефон:</label><input type="text"></input></p>
	<input type="button" onClick="" value="изменить" />
  </div>
</form>

<form id="PremadeControl" class="fControl">
  <div>
    <p>Здесь можно отредактировать заготовки</p>
	<div class="dItems">
	  <SELECT size="5" class="multiselect" id="mItem" onChange="document.getElementById('premade').value = this.options[this.selectedIndex].value">
	    <?php for($i = 0; $i < 10; $i++) echo "<option value = $i>$i</option>"; ?>
	  </SELECT>      
    </div>
	<div>
	  <label for="premade">Название</label><input type="text" id="premade"></input>	  
	</div>
    <input type="button" onClick="" value="изменить" />
  </div>
</form>