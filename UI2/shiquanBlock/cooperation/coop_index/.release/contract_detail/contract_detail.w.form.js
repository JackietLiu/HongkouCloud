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
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/cooperation/coop_index/contract_detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3InQzu';
	this._flag_='716704873d43b1a230035debebd7e528';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"daishou":{"define":"daishou","label":"daishou","name":"daishou","relation":"daishou","type":"String"},"fromto":{"define":"fromto","label":"fromto","name":"fromto","relation":"fromto","type":"String"},"lesseeName":{"define":"lesseeName","label":"lesseeName","name":"lesseeName","relation":"lesseeName","type":"String"},"memo":{"define":"memo","label":"memo","name":"memo","relation":"memo","type":"String"},"mouthRent":{"define":"mouthRent","label":"mouthRent","name":"mouthRent","relation":"mouthRent","type":"String"},"phoneNumber":{"define":"phoneNumber","label":"phoneNumber","name":"phoneNumber","relation":"phoneNumber","type":"String"},"rent_pay_Text":{"define":"rent_pay_Text","label":"rent_pay_Text","name":"rent_pay_Text","relation":"rent_pay_Text","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","limit":20,"xid":"contractdata"});
}}); 
return __result;});