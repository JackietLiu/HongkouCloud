window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_bc472b416ce044a19012da434fcbe193l_zh_CNs_d_m/chat/chat.min.css', include: '$model/UI2/chat/lib/photoswipe/photoswipe,$model/UI2/chat/lib/superInput/css/emoji,$model/UI2/chat/lib/photoswipe/default-skin,$model/UI2/chat/lib/superInput/icon/addicon/iconfont,$model/UI2/chat/lib/superInput/css/superInput,$model/UI2/chat/lib/superInput/icon/iconfont'},{url: '/UI2/v_88682ed15db54fa78e80ff0302b5b363l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_e8a1656d35154241944bbd7e13581bfel_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_963afd72740f4ff4b166038250ac0e96l_zh_CNs_d_m/chat/chat.min.js','/v_971d76513d354c73bd4ef0f66c55a9efl_zh_CNs_d_m/system/core.min.js','/v_e7b0a720a8fc492d8d5c3bc439961316l_zh_CNs_d_m/system/common.min.js','/v_e1d537eaf3dc4e4bbfb6467963875defl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent2=require('$model/UI2/system/lib/base/modelBase'); 
var __parent1=require('$model/UI2/chat/base/main'); 
var __parent0=require('$model/UI2/chat/wex5/main'); 
var __result = __parent2._extend(__parent1)._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFNBFbm';
	this._flag_='537a177c00e3f78c245d161c7bf1bb07';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"fCounter":{"define":"fCounter","name":"fCounter","relation":"fCounter","rules":{"integer":true},"type":"Integer"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","name":"fImg","relation":"fImg","type":"String"},"fLatestChat":{"define":"fLatestChat","label":"","name":"fLatestChat","relation":"fLatestChat","type":"String"},"fLatestChatDate":{"define":"fLatestChatDate","label":"","name":"fLatestChatDate","relation":"fLatestChatDate","type":"String"},"fNickName":{"define":"fNickName","label":"fNickName","name":"fNickName","relation":"fNickName","type":"String"},"fState":{"define":"fState","name":"fState","relation":"fState","type":"String"},"fType":{"define":"fType","name":"fType","relation":"fType","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":20,"xid":"dialogData"});
}}); 
return __result;});
