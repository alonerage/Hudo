/*переход по формам*/
function toForm(sFormName)
{
    $.post("forms/f" + sFormName + ".php", null,
        function (data) {
            $("#form").html(data);
        });
}

/*клик в меню*/
function menuClick(objClicked)
{
    $(".selected").removeClass();
    objClicked.className = "selected";
    toForm(objClicked.id);
}