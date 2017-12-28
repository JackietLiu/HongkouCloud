define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/deploy/app/selectMode'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='crQb2ye';
	this._flag_='08407c2ccadf5fe4dac2c79f4629ecd6';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"Value":{"define":"Value","label":"Value","name":"Value","relation":"Value","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","initData":"[{\"ID\":\"1\",\"Value\":\"模式1：UI资源启动后智能更新模式。WeX5推荐使用本模式，使用到的UI资源编译为标准的Web资源（HTML、CSS、JS等），并部署到Web服务器上，支持多版本同时运行和灰度发布，如Web服务端资源有更新，则延迟（异步）更新；无Web服务端的本地应用，UI资源直接包含到本地应用中，也推荐使用此模式\"},{\"ID\":\"2\",\"Value\":\"模式2：UI资源启动时立即更新模式。使用到的UI资源编译为标准的Web资源（HTML、CSS、JS等），并部署到Web服务器上，如Web服务端资源有更新，则启动时立即（同步）更新资源\"},{\"ID\":\"3\",\"Value\":\"模式3：UI资源通过UIServer访问。BeX5推荐使用本模式；WeX5调试时也推荐本模式，但由于WeX5服务端更为灵活，发布推荐使用模式1\"},{\"ID\":\"4\",\"Value\":\"模式4：打开一个非WeX5开发的网站。本模式的App类似一个没有地址栏并打开一个默认网址的浏览器，并可用js调用本地插件\"}]","isMain":false,"limit":20,"xid":"modeData"});
}}); 
return __result;});