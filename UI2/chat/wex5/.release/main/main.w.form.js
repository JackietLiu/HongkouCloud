define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent2=require('$model/UI2/system/lib/base/modelBase'); 
var __parent1=require('$model/UI2/chat/base/main'); 
var __parent0=require('$model/UI2/chat/wex5/main'); 
var __result = __parent2._extend(__parent1)._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFNBFbm';
	this._flag_='537a177c00e3f78c245d161c7bf1bb07';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"fCounter":{"define":"fCounter","name":"fCounter","relation":"fCounter","rules":{"integer":true},"type":"Integer"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","name":"fImg","relation":"fImg","type":"String"},"fLatestChat":{"define":"fLatestChat","label":"","name":"fLatestChat","relation":"fLatestChat","type":"String"},"fLatestChatDate":{"define":"fLatestChatDate","label":"","name":"fLatestChatDate","relation":"fLatestChatDate","type":"String"},"fNickName":{"define":"fNickName","label":"fNickName","name":"fNickName","relation":"fNickName","type":"String"},"fState":{"define":"fState","name":"fState","relation":"fState","type":"String"},"fType":{"define":"fType","name":"fType","relation":"fType","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":20,"xid":"dialogData"});
}}); 
return __result;});