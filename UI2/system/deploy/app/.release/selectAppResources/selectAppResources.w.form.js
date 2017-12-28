define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/deploy/app/selectAppResources'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cjeEJBb';
	this._flag_='9f6bc878f78e26fba32681f4490faf52';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"appID":{"define":"appID","name":"appID","relation":"appID","type":"String"},"mode":{"define":"mode","label":"模式","name":"mode","relation":"mode","rules":{"integer":true},"type":"Integer"},"webIDE":{"define":"webIDE","label":"WebIDE","name":"webIDE","relation":"webIDE","type":"Boolean"}},"directDelete":false,"events":{},"idColumn":"webIDE","isMain":false,"limit":20,"xid":"configData"});
}}); 
return __result;});