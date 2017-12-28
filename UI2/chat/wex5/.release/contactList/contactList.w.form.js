define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/chat/wex5/contactList'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cVzENZj';
	this._flag_='367fffc80fcde684da19c3fc3c867844';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheckRow":{"define":"fCheckRow","name":"fCheckRow","relation":"fCheckRow","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","name":"fImg","relation":"fImg","type":"String"},"fIsGroup":{"define":"fIsGroup","name":"fIsGroup","relation":"fIsGroup","type":"String"},"fSabout":{"define":"fSabout","name":"fSabout","relation":"fSabout","type":"String"},"fSpersonID":{"define":"fSpersonID","name":"fSpersonID","relation":"fSpersonID","type":"String"},"fsFID":{"define":"fsFID","name":"fsFID","relation":"fsFID","type":"String"},"fsName":{"define":"fsName","name":"fsName","relation":"fsName","type":"String"},"fsfName":{"define":"fsfName","name":"fsfName","relation":"fsfName","type":"String"},"sChineseFirstPY":{"define":"sChineseFirstPY","name":"sChineseFirstPY","relation":"sChineseFirstPY","type":"String"},"type":{"define":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":20,"xid":"contactListData"});
}}); 
return __result;});