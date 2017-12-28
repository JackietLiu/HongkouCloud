define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/index_link/imageNews'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cq2Q7bu';
	this._flag_='fdce1d7c616cd98aa840330b03644421';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"collectid":{"define":"collectid","label":"收藏人id","name":"collectid","relation":"collectid","type":"String"},"comefrom":{"define":"comefrom","label":"来自于","name":"comefrom","relation":"comefrom","type":"String"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"createtime":{"define":"createtime","label":"收藏时间","name":"createtime","relation":"createtime","rules":{"datetime":true},"type":"DateTime"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"image":{"define":"image","label":"图片地址","name":"image","relation":"image","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"queryAction":"queryCollection","saveAction":"saveCollection","tableName":"collection","url":"/hongkou/hongkou","xid":"collectData"});
}}); 
return __result;});