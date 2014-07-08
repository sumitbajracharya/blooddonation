for(var i = 0; i < 13; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
document.getElementById('u3_img').tabIndex = 0;

u3.style.cursor = 'pointer';
$axure.eventManager.click('u3', function(e) {

if (true) {

	parent.location.href = $axure.globalVariableProvider.getLinkUrl('EVENT_VERIFY.html');

}
});
gv_vAlignTable['u12'] = 'top';gv_vAlignTable['u4'] = 'top';gv_vAlignTable['u8'] = 'top';gv_vAlignTable['u10'] = 'top';gv_vAlignTable['u6'] = 'top';gv_vAlignTable['u2'] = 'top';