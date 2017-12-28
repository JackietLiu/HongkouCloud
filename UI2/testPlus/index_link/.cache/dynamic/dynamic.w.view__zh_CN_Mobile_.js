window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_0a7362b177bf4e6ebc40b917ffd3a612l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_22bcef63bf574abf9c30bd5274d6b9dfl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_c09a327f44ed4bce8ec4f861d30bd6b4l_zh_CNs_d_m/system/core.min.js','/v_dd6eaa7eab874c67be9c77ea9c3449e4l_zh_CNs_d_m/system/common.min.js','/v_d4727182512f41eb8324ac4d9752b3bfl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/index_link/dynamic'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cQ7Fjum';
	this._flag_='19aa1d4b4aa12099db82313279603389';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"createMan":{"define":"createMan","name":"createMan","relation":"createMan","type":"String"},"createTime":{"define":"createTime","name":"createTime","relation":"createTime","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"theWorkDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"theWorkData"});
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Date_Audit":{"define":"Date_Audit","label":"Date_Audit","name":"Date_Audit","relation":"Date_Audit","type":"String"},"FCD":{"define":"FCD","label":"FCD","name":"FCD","relation":"FCD","type":"String"},"FeedBackCategory":{"define":"FeedBackCategory","label":"FeedBackCategory","name":"FeedBackCategory","relation":"FeedBackCategory","type":"String"},"FeedBackContent":{"define":"FeedBackContent","label":"FeedBackContent","name":"FeedBackContent","relation":"FeedBackContent","type":"String"},"FeedBackDate":{"define":"FeedBackDate","label":"FeedBackDate","name":"FeedBackDate","relation":"FeedBackDate","type":"String"},"FeedBack_Title":{"define":"FeedBack_Title","label":"FeedBack_Title","name":"FeedBack_Title","relation":"FeedBack_Title","type":"String"},"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"Is_Audit":{"define":"Is_Audit","label":"Is_Audit","name":"Is_Audit","relation":"Is_Audit","type":"String"},"LUD":{"define":"LUD","label":"LUD","name":"LUD","relation":"LUD","type":"String"},"Memo":{"define":"Memo","label":"Memo","name":"Memo","relation":"Memo","type":"String"},"User_ID":{"define":"User_ID","label":"User_ID","name":"User_ID","relation":"User_ID","type":"String"},"User_ID_Audit":{"define":"User_ID_Audit","label":"User_ID_Audit","name":"User_ID_Audit","relation":"User_ID_Audit","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","isMain":false,"limit":20,"queryAction":"queryZtgz","tableName":"feedback_special","url":"/hongkou/hongkou","xid":"newsData"});
}}); 
return __result;});
