define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/deploy/app/configApp'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cnauABz';
	this._flag_='8ef900425f4ca90674b5856616beb553';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"Value":{"define":"Value","label":"Value","name":"Value","relation":"Value","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","initData":"[{\"ID\":\"auto\",\"Value\":\"自动选择：依据设备环境自动选择引擎。如果系统自带WebView>=Chrome 39，将使用系统自带，否则使用腾讯引擎（需安装微信或QQ，如未安装，将使用系统自带） \"},{\"ID\":\"system\",\"Value\":\"系统自带：使用系统自带WebView，适用于大部分高版本Android \"},{\"ID\":\"tencent\",\"Value\":\"腾讯引擎：使用腾讯引擎，如果没有安装微信或者QQ，将使用系统自带WebView\"},{\"ID\":\"crossWalk\",\"Value\":\"Crosswalk引擎：Crosswalk对渲染做了优化并统一了chrome版本，但App将会大18M \"}]","isMain":false,"limit":20,"xid":"engineData"});
}}); 
return __result;});