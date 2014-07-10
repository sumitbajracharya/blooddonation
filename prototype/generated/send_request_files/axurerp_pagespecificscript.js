for(var i = 0; i < 6; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u5'] = 'top';gv_vAlignTable['u0'] = 'top';
u2.style.cursor = 'pointer';
$axure.eventManager.click('u2', function(e) {

if (true) {

	parent.window.close();

}
});
u3.tabIndex = 0;

u3.style.cursor = 'pointer';
$axure.eventManager.click('u3', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('Emergency_Blood_Request.html');

}
});
gv_vAlignTable['u3'] = 'top';