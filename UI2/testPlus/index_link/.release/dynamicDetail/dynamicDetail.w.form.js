define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/bootstrap/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/index_link/dynamicDetail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c6VRrqe';
	this._flag_='07c468e96c462de715c3c65394d2bec5';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"dID":{"define":"dID","label":"动态id","name":"dID","relation":"dID","type":"String"},"pContent":{"define":"pContent","label":"评论内容","name":"pContent","relation":"pContent","type":"String"},"pDate":{"define":"pDate","label":"评论时间","name":"pDate","relation":"pDate","rules":{"datetime":true},"type":"DateTime"},"pID":{"define":"pID","label":"评论id","name":"pID","relation":"pID","type":"String"},"pImage":{"define":"pImage","label":"发表图片","name":"pImage","relation":"pImage","type":"String"},"pName":{"define":"pName","label":"评论者","name":"pName","relation":"pName","type":"String"}},"directDelete":false,"events":{},"idColumn":"pID","isMain":false,"limit":20,"xid":"commentData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"FCB":{"define":"FCB","name":"FCB","relation":"FCB","type":"String"},"createTime":{"define":"createTime","name":"createTime","relation":"createTime","rules":{"datetime":true},"type":"DateTime"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"FCB","isMain":false,"limit":20,"xid":"dynamicData"});
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"did":{"define":"did","label":"动态ID","name":"did","relation":"did","type":"String"},"pcontent":{"define":"pcontent","label":"评论内容","name":"pcontent","relation":"pcontent","type":"String"},"pdate":{"define":"pdate","label":"评论时间","name":"pdate","relation":"pdate","type":"String"},"pid":{"define":"pid","label":"pID","name":"pid","relation":"pid","type":"String"},"pimage":{"define":"pimage","label":"评论人头像","name":"pimage","relation":"pimage","type":"String"},"pname":{"define":"pname","label":"评论人姓名","name":"pname","relation":"pname","type":"String"},"type":{"define":"type","label":"评论类型：0为专题工作评论，1为软件评论","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"pid","isMain":false,"limit":20,"orderBys":[{"relation":"pDate","type":0}],"queryAction":"queryComment","saveAction":"saveComment","tableName":"comment","url":"/hongkou/hongkou","xid":"cmtData"});
}}); 
return __result;});