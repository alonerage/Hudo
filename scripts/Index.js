function showMessage(sHtml, sType) {
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();
    $('#mask').css({'width':maskWidth,'height':maskHeight});
    $('#mask').fadeTo('slow',0.9);
    $('#mask').fadeIn(200);    
            
    if (sType == 'err')
        sHtml = '<img src="img/err.png" alt="ошибка"><div id="message">' + sHtml + '</div>';
    if (sType == 'info')
        sHtml = '<img src="img/info.png" alt="инофрмация"><div id="message">' + sHtml + '</div>';
    $('#modal-content').html(sHtml);

	
    var winH = $(window).height();
    var winW = $(window).width();  
    $('#modal').css('top',  winH/2-$('#modal').height()/2);
    $('#modal').css('left', winW/2-$('#modal').width()/2);
    $('#modal').fadeIn(250);
}

function toForm(sFormName) {
    $.post('forms/f' + sFormName + '.php', null,
        function (data) {
            $('#form').html(data);
            $('#content').html('');
        });
}

function menuClick(oClicked) {
    $('.selected').removeClass();
    oClicked.className = 'selected';
    toForm(oClicked.id);
}

function showLogin() {
    var login_screen = '<form id="login_form">';
    login_screen += '<label>Имя пользователя:</label>';
    login_screen += '<input type="text" name="username" id="ulogin" /><br />';
    login_screen += '<label>Ваш пароль:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>';
    login_screen += '<input type="password" name="userpass" id="upass" onkeyDown="hotkey(event);" /><br />';
    login_screen += '<input type="button" value="авторизоваться" onclick="authorize();" / >';
    login_screen += '</form>';
    showMessage(login_screen);
}

function hotkey(event) {
	if(event.keyCode==13)
	    if($('#login_form').length)
		    authorize();
}

function authorize() {
    $.post('ajax/authenticate.php', {username : $('#ulogin').val(), 
                                     userpass : $('#upass').val()},
        function (data) {
			if(data == 1){
				$("#mask, #modal").hide();
				location.reload(true);
			}
			else {
				alert(data);
				return false;
			}
        });
}

function LogOut() {
    $.post('ajax/logout.php', null,
        function (data) {
			location.reload(true);
		}
	);
}

function Register() {
	var login = $('#userlogin').val();
	var pass = $('#userpass').val();
	var info = $('#userinfo').val();
    $.post('ajax/registration.php', {userlogin : login, userpass : pass, userinfo : info},
        function (data) {
			$('#output').html(data);
			if(data == "Пользователь добавлен.") {
					$('#userlogin').val('');
	                $('#userpass').val('');
	                $('#userinfo').val('');
			}
		}
	);
}
