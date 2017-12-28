define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/input/password');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
var __parent2=require('$model/UI2/system/lib/base/modelBase'); 
var __parent1=require('$model/UI2/chat/base/login'); 
var __parent0=require('$model/UI2/chat/wex5/login'); 
var __result = __parent2._extend(__parent1)._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBRRJBr';
	this._flag_='4f0ab5f054d200a19c7b24d86549cc51';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"code":{"define":"code","label":"验证码","name":"code","relation":"code","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"phone":{"define":"phone","label":"手机号","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"phone\":\"\",\"id\":\"1\"}]","isMain":false,"limit":20,"xid":"loginData"});
}}); 
return __result;});