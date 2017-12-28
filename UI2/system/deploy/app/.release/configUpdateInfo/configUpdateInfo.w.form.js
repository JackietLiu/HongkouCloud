define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/deploy/app/configUpdateInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMBb6Br';
	this._flag_='4bb4c47bb7d341e11b288fabd43e26c3';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Value":{"define":"Value","label":"描述","name":"Value","relation":"Value","type":"String"},"fID":{"define":"fID","label":"类型","name":"fID","relation":"fID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","initData":"[{\"fID\":\"version\",\"Value\":\"版本号方式：设备上的资源版本号与服务端不同时，设备资源全部更新\"},{\"fID\":\"md5\",\"Value\":\"Hash方式：每个资源文件都有一个md5值，可根据内容变化增量更新\"}]","isMain":false,"limit":20,"xid":"updateMode"});
}}); 
return __result;});