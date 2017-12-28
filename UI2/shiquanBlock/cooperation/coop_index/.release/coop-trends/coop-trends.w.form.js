define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/cooperation/coop_index/coop-trends'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cbAFVBf';
	this._flag_='221cf7eba116e095de29fabae6c20853';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"age":{"define":"age","label":"age","name":"age","relation":"age","type":"String"},"department":{"define":"department","label":"department","name":"department","relation":"department","type":"String"},"img":{"define":"img","label":"img","name":"img","relation":"img","type":"String"},"office":{"define":"office","label":"office","name":"office","relation":"office","type":"String"},"passWord":{"define":"passWord","label":"passWord","name":"passWord","relation":"passWord","type":"String"},"phoneNumber":{"define":"phoneNumber","label":"phoneNumber","name":"phoneNumber","relation":"phoneNumber","type":"String"},"realName":{"define":"realName","label":"realName","name":"realName","relation":"realName","type":"String"},"uID":{"define":"uID","label":"uID","name":"uID","relation":"uID","type":"String"},"uName":{"define":"uName","label":"uName","name":"uName","relation":"uName","type":"String"}},"directDelete":false,"events":{},"idColumn":"uID","limit":20,"tableName":"users","xid":"testData"});
}}); 
return __result;});