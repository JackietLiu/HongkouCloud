define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/extendType/commonExtendTypes');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/dataTables/dataTables');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/designer/baas/editor/selectDBDlg'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMJj2ai';
	this._flag_='e3b28054bb288ab51aec95eea8c1306c';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":false,"confirmRefresh":false,"defCols":{"checked":{"define":"checked","label":"选中","name":"checked","relation":"checked","type":"Boolean"},"name":{"define":"name","label":"DB","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"dataDBCustomRefresh","onValueChanged":"dataDBValueChanged"},"idColumn":"name","isMain":false,"limit":-1,"xid":"dataDB"});
}}); 
return __result;});