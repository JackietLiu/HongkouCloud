define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/wing/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/input/password');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/wing/wing');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/index'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cYfEnYv';
	this._flag_='f7a3d49a0f6aaf11d13e99975ac5bffc';
	this.callParent(contextUrl);
 require('css!$UI/iconfont/iconfont.icons').load();
 require('css!$UI/font-awesome-4.5.0/css/fa.icons').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"PassWord":{"define":"PassWord","label":"PassWord","name":"PassWord","relation":"PassWord","type":"String"},"age":{"define":"age","label":"age","name":"age","relation":"age","type":"String"},"col9":{"define":"col9","name":"col9","relation":"col9","type":"String"},"department":{"define":"department","label":"department","name":"department","relation":"department","type":"String"},"img":{"define":"img","label":"img","name":"img","relation":"img","type":"String"},"ofiice":{"define":"ofiice","label":"ofiice","name":"ofiice","relation":"ofiice","type":"String"},"phoneNumber":{"define":"phoneNumber","label":"phoneNumber","name":"phoneNumber","relation":"phoneNumber","type":"String"},"realName":{"define":"realName","label":"realName","name":"realName","relation":"realName","type":"String"},"uID":{"define":"uID","label":"uID","name":"uID","relation":"uID","type":"String"},"uName":{"define":"uName","label":"uName","name":"uName","relation":"uName","type":"String"}},"directDelete":false,"events":{},"idColumn":"uID","limit":20,"xid":"userData"});
}}); 
return __result;});