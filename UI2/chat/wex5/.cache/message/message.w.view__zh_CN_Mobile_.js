window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_3540b25a0b3d4a2fa21443beaff47370l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_cc245be02f1448c880848d417968b262l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_32005315f36f4f66a56ace612d0c9311l_zh_CNs_d_m/system/core.min.js','/v_199aa78ac62b4a6c9a0bc470d20050ebl_zh_CNs_d_m/system/common.min.js','/v_3d2bbc89f5be4a7eaec809b592984f8al_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/chat/lib/superInput/superInput');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/router/router');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent2=require('$model/UI2/system/lib/base/modelBase'); 
var __parent1=require('$model/UI2/chat/base/message'); 
var __parent0=require('$model/UI2/chat/wex5/message'); 
var __result = __parent2._extend(__parent1)._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUN3qaq';
	this._flag_='da2d4e67f216d9903ef48b5f87291c42';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAttentionNum":{"define":"fAttentionNum","label":"fAttentionNum","name":"fAttentionNum","relation":"fAttentionNum","type":"String"},"fChecked":{"define":"fChecked","label":"fChecked","name":"fChecked","relation":"fChecked","type":"String"},"fContent":{"define":"fContent","label":"fContent","name":"fContent","relation":"fContent","type":"String"},"fFileName":{"define":"fFileName","label":"fFileName","name":"fFileName","relation":"fFileName","type":"String"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"fImg","name":"fImg","relation":"fImg","type":"String"},"fIsOwnSet":{"define":"fIsOwnSet","label":"fIsOwnSet","name":"fIsOwnSet","relation":"fIsOwnSet","type":"String"},"fMessageText":{"define":"fMessageText","label":"fMessageText","name":"fMessageText","relation":"fMessageText","type":"String"},"fSender":{"define":"fSender","label":"fSender","name":"fSender","relation":"fSender","type":"String"},"fSenderPID":{"define":"fSenderPID","label":"fSenderPID","name":"fSenderPID","relation":"fSenderPID","type":"String"},"fSenderTime":{"define":"fSenderTime","label":"fSenderTime","name":"fSenderTime","relation":"fSenderTime","type":"String"},"fState":{"define":"fState","label":"fState","name":"fState","relation":"fState","type":"String"},"fStyle":{"define":"fStyle","label":"fStyle","name":"fStyle","relation":"fStyle","type":"String"},"fileUrl":{"define":"fileUrl","label":"fileUrl","name":"fileUrl","relation":"fileUrl","type":"String"},"isOut":{"define":"isOut","label":"isOut","name":"isOut","relation":"isOut","type":"Boolean"},"pageParams":{"define":"pageParams","label":"pageParams","name":"pageParams","relation":"pageParams","type":"String"},"pageUrl":{"define":"pageUrl","label":"pageUrl","name":"pageUrl","relation":"pageUrl","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":20,"xid":"messageData"});
}}); 
return __result;});
