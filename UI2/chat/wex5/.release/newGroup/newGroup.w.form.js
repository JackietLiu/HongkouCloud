define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/panel/panel');
require('$model/UI2/system/components/justep/panel/panel');
var __parent2=require('$model/UI2/system/lib/base/modelBase'); 
var __parent1=require('$model/UI2/chat/base/newGroup'); 
var __parent0=require('$model/UI2/chat/wex5/newGroup'); 
var __result = __parent2._extend(__parent1)._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuimQJv';
	this._flag_='5f8133834640b6c503daa520206f5703';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":true,"defCols":{"fAbout":{"define":"fAbout","label":"关于","name":"fAbout","relation":"fAbout","type":"String"},"fAccountID":{"define":"fAccountID","label":"账号","name":"fAccountID","relation":"fAccountID","type":"String"},"fCode":{"define":"fCode","label":"二维码","name":"fCode","relation":"fCode","type":"String"},"fGender":{"define":"fGender","label":"性别","name":"fGender","relation":"fGender","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"头像","name":"fImg","relation":"fImg","type":"String"},"fName":{"define":"fName","label":"姓名","name":"fName","relation":"fName","type":"String"},"fNickName":{"define":"fNickName","label":"昵称","name":"fNickName","relation":"fNickName","type":"String"},"fPinyin":{"define":"fPinyin","label":"首字母拼音","name":"fPinyin","relation":"fPinyin","type":"String"},"fRegion":{"define":"fRegion","label":"地区","name":"fRegion","relation":"fRegion","type":"String"},"fRemark":{"define":"fRemark","label":"备注","name":"fRemark","relation":"fRemark","type":"String"},"fTel":{"define":"fTel","label":"电话号码","name":"fTel","relation":"fTel","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":-1,"xid":"contactsData"});
}}); 
return __result;});