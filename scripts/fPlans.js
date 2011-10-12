var count = 0;
var fixprice = 0;

function TypeClick() {
	$('#itemlist option').attr('selected', false);
    $('#itemlist').html('<option>--Сначала выберите категорию--</option>');
    $('#price').val('');
    $('#categorylist option').attr('selected', false);
    $.post('ajax/loadCategories.php', { t_id : $('#typelist option:selected').val()},
    function (data) {
       $('#categorylist').html(data);
    });
}

function CategoryClick() {
    $('#itemlist option').attr('selected', false);
    $('#price').val('');
    $.post('ajax/loadItems.php', { c_id : $('#categorylist option:selected').val()},
    function (data) {
       $('#itemlist').html(data);
    });
}

function ItemClick() {
    $.post('ajax/loadPrice.php', { item_id : $('#itemlist option:selected').val()},
    function (data) {
       $('#price').val(data);
       fixprice = data;
    });
}

function AmountChange() {
	var current_amount = $('#amount').val();
	if(current_amount > 0){
	    var result = fixprice * current_amount;
	    $('#price').val(result);
	}
	else
	    $('#price').val(fixprice);
}

function validPlan()
{
        if ($('#typelist option:selected').val() != 0 && $('#categorylist option:selected').val() != 0 && $('#itemlist option:selected').val() != 0) {
            if ($('#amount').val() != 0) {
                if ($('#price').val() != 0) {
                    AddToList();
                }
                else
                    showMessage('Введите цену', 'err');    
            }
            else
                showMessage('Введите количество', 'err');
        }
        else
            showMessage('Выберите Вид-Категорию-Изделие', 'err');
}


function AddToList() {
	count++;
	var jsonPlan = '{"count":' + count + ',';
	jsonPlan +=  '"item_id":' + $('#itemlist option:selected').val() + ',';
	jsonPlan +=  '"amount_to_make":' + $('#amount').val() + ',';
	jsonPlan +=  '"price":' + $('#price').val() + ',';
	jsonPlan +=  '"comment":"' + $('#comment').val() + '"}';
    	
	if($('#planpreview').html() == '')
		$('#planpreview').html("<div id='currentplan' class='preview'></div>");
	
	var text = $('#currentplan').html();
	text += $('#typelist option:selected').text() + ' / ';
	text += $('#categorylist option:selected').text() + ' / ';
	text += $('#itemlist option:selected').text() + ' / ';
	text += $('#amount').val() + 'шт. / ';
	text += $('#price').val() + 'руб. /';
	text += $('#comment').val() + '<br />';
	text += '<input type="hidden" name="planpoint' + count + '" value=\'' + jsonPlan + '\' />';
	$('#currentplan').html(text);
	
	PlanClear();
}



function Add() {
	if($('#planpreview').html() != '') {
		$('#planpreview').append('<input type="hidden" name="Count" value="' + count + '" />');
		$.post('ajax/addPlan.php', $('#planpreview').serialize(),
			function (data) {
				showMessage(data);
				PlanClear();
				$('#planpreview').html('<div id="currentplan" class="planpreview"></div>');
				count = 0;
			});
		$('#planpreview').html('');
	}
	else{
		showMessage('Сначала добавьте хотя бы один пункт в план!','err')
	}	
}

function PlanClear() {
	$('#typelist option:first').attr('selected','1');
	$('#itemlist option').attr('selected', false);
    $('#itemlist').html('<option>--Сначала выберите категорию--</option>');
    $('#categorylist option').attr('selected', false);
    $('#categorylist').html('<option>--Сначала выберите тип--</option>');
    $('#price').val('');
}

function PlanShow() {
    $.post('ajax/planShow.php', {closed : $('#closed').prop('checked')},
        function (data) {
		  $('#planlist').html();
		  $('#planlist').html(data);
		});
}
