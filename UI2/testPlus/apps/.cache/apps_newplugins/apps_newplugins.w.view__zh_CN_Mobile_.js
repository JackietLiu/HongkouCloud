window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_e3464e476b8d45bcb163d062e07fadd3l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_5beac83b9b3b439ca31b9d0b82379851l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_d0d5fea3f5be48e4bc55f782f796baacl_zh_CNs_d_m/system/core.min.js','/v_d942923cb14341338e1399aa563fa2d8l_zh_CNs_d_m/system/common.min.js','/v_e1bd2b84c8bb4b5fbe669df75c4181ffl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/apps/apps_newplugins'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ceieqIv';
	this._flag_='b0a0468b0b547925009a0a414b67b8f3';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"appName":{"define":"appName","label":"appName","name":"appName","relation":"appName","type":"String"}},"directDelete":false,"events":{},"idColumn":"appName","isMain":false,"limit":20,"xid":"indexApp"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ApkPath":{"define":"ApkPath","name":"ApkPath","relation":"ApkPath","type":"String"},"AppStatus":{"define":"AppStatus","name":"AppStatus","relation":"AppStatus","type":"String"},"ApplicationImagePath":{"define":"ApplicationImagePath","name":"ApplicationImagePath","relation":"ApplicationImagePath","type":"String"},"ApplicationMemo":{"define":"ApplicationMemo","name":"ApplicationMemo","relation":"ApplicationMemo","type":"String"},"ApplicationName":{"define":"ApplicationName","name":"ApplicationName","relation":"ApplicationName","type":"String"},"ApplicationPathIn":{"define":"ApplicationPathIn","name":"ApplicationPathIn","relation":"ApplicationPathIn","type":"String"},"ID":{"define":"ID","name":"ID","relation":"ID","type":"String"},"Size":{"define":"Size","name":"Size","relation":"Size","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"pluginsDataCustomRefresh"},"idColumn":"ID","isMain":false,"limit":20,"xid":"pluginsData"});
}}); 
return __result;});
