for(var i = 0; i < 11; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u4'] = 'top';$('#u6').attr('axSubmit', 'u7');

u7.style.cursor = 'pointer';
$axure.eventManager.click('u7', function(e) {

if ((GetWidgetText('u6')) == ('admin')) {

    var reload = ParentWindowNeedsReload('ADMIN_DASH_BOARD.html');
	top.opener.window.location.href = $axure.globalVariableProvider.getLinkUrl('ADMIN_DASH_BOARD.html');
    if (reload) {
        top.opener.window.location = "resources/reload.html#" + encodeURI(top.opener.window.location.href);
    }

	parent.window.close();

}
else
if ((GetWidgetText('u6')) != ('admin')) {

    var reload = ParentWindowNeedsReload('USER_PROFILE.html');
	top.opener.window.location.href = $axure.globalVariableProvider.getLinkUrl('USER_PROFILE.html');
    if (reload) {
        top.opener.window.location = "resources/reload.html#" + encodeURI(top.opener.window.location.href);
    }

	parent.window.close();

}
});
gv_vAlignTable['u9'] = 'top';gv_vAlignTable['u10'] = 'top';gv_vAlignTable['u1'] = 'center';gv_vAlignTable['u2'] = 'top';gv_vAlignTable['u3'] = 'top';