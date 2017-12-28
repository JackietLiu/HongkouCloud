window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_5aee1e7961c443a2a6c3bfe398439cdfl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_300778811fcc48e7a97dd74020278d02l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_ee77d762cde84b9d9f07c162473fb267l_zh_CNs_d_m/system/components/comp2.min.js','/v_2ff4e532800b4cc0b331b4836df8c8d9l_zh_CNs_d_m/chat/chat.min.js','/v_0fe20506fe5244deabfd82a065812064l_zh_CNs_d_m/system/core.min.js','/v_0223ebeab5c0486d8250ac62b0d63a14l_zh_CNs_d_m/system/common.min.js','/v_ce63a881fa8c40c39567ca47570f24ffl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/panel/panel');
require('$model/UI2/system/components/justep/panel/panel');
var __parent2=require('$model/UI2/system/lib/base/modelBase'); 
var __parent1=require('$model/UI2/chat/base/newGroup'); 
var __parent0=require('$model/UI2/chat/wex5/newGroup'); 
var __result = __parent2._extend(__parent1)._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuimQJv';
	this._flag_='5f8133834640b6c503daa520206f5703';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":true,"defCols":{"fAbout":{"define":"fAbout","label":"关于","name":"fAbout","relation":"fAbout","type":"String"},"fAccountID":{"define":"fAccountID","label":"账号","name":"fAccountID","relation":"fAccountID","type":"String"},"fCode":{"define":"fCode","label":"二维码","name":"fCode","relation":"fCode","type":"String"},"fGender":{"define":"fGender","label":"性别","name":"fGender","relation":"fGender","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"头像","name":"fImg","relation":"fImg","type":"String"},"fName":{"define":"fName","label":"姓名","name":"fName","relation":"fName","type":"String"},"fNickName":{"define":"fNickName","label":"昵称","name":"fNickName","relation":"fNickName","type":"String"},"fPinyin":{"define":"fPinyin","label":"首字母拼音","name":"fPinyin","relation":"fPinyin","type":"String"},"fRegion":{"define":"fRegion","label":"地区","name":"fRegion","relation":"fRegion","type":"String"},"fRemark":{"define":"fRemark","label":"备注","name":"fRemark","relation":"fRemark","type":"String"},"fTel":{"define":"fTel","label":"电话号码","name":"fTel","relation":"fTel","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":-1,"xid":"contactsData"});
}}); 
return __result;});
