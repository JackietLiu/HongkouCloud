define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/apps/apps_newplugins'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ceieqIv';
	this._flag_='b0a0468b0b547925009a0a414b67b8f3';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"appName":{"define":"appName","label":"appName","name":"appName","relation":"appName","type":"String"}},"directDelete":false,"events":{},"idColumn":"appName","isMain":false,"limit":20,"xid":"indexApp"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ApkPath":{"define":"ApkPath","name":"ApkPath","relation":"ApkPath","type":"String"},"AppStatus":{"define":"AppStatus","name":"AppStatus","relation":"AppStatus","type":"String"},"ApplicationImagePath":{"define":"ApplicationImagePath","name":"ApplicationImagePath","relation":"ApplicationImagePath","type":"String"},"ApplicationMemo":{"define":"ApplicationMemo","name":"ApplicationMemo","relation":"ApplicationMemo","type":"String"},"ApplicationName":{"define":"ApplicationName","name":"ApplicationName","relation":"ApplicationName","type":"String"},"ApplicationPathIn":{"define":"ApplicationPathIn","name":"ApplicationPathIn","relation":"ApplicationPathIn","type":"String"},"ID":{"define":"ID","name":"ID","relation":"ID","type":"String"},"Size":{"define":"Size","name":"Size","relation":"Size","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"pluginsDataCustomRefresh"},"idColumn":"ID","isMain":false,"limit":20,"xid":"pluginsData"});
}}); 
return __result;});