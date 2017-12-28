define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/enterprise/contact_Detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAVZN7j';
	this._flag_='b9eef7b2d43ea79876b674b13da04316';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"contact_name":{"define":"contact_name","label":"license_no","name":"contact_name","relation":"contact_name","type":"String"},"contact_tel":{"define":"contact_tel","label":"contact_tel","name":"contact_tel","relation":"contact_tel","type":"String"},"contact_title":{"define":"contact_title","label":"allin1_no","name":"contact_title","relation":"contact_title","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","limit":20,"xid":"contactdata"});
}}); 
return __result;});