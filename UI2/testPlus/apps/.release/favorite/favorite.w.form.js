define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/apps/favorite'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c6nymAr';
	this._flag_='a05cd24b2f5f0d3495b78b745ff4bcd4';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"checked":{"define":"checked","label":"是否選中","name":"checked","relation":"checked","rules":{"integer":true},"type":"Integer"},"collectid":{"define":"collectid","label":"收藏人id","name":"collectid","relation":"collectid","type":"String"},"comefrom":{"define":"comefrom","label":"来自于","name":"comefrom","relation":"comefrom","type":"String"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"contentid":{"define":"contentid","label":"contentid","name":"contentid","relation":"contentid","type":"String"},"createtime":{"define":"createtime","label":"收藏时间","name":"createtime","relation":"createtime","rules":{"date":true},"type":"Date"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"image":{"define":"image","label":"图片地址","name":"image","relation":"image","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"orderBys":[{"relation":"createtime","type":0}],"queryAction":"queryCollection","saveAction":"saveCollection","tableName":"collection","url":"/hongkou/hongkou","xid":"collectData"});
}}); 
return __result;});