define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/cooperation/coop_index/building_detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuQZNzm';
	this._flag_='b44ccf83c4d3150ba4591097480b10ed';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"area":{"define":"area","label":"area","name":"area","relation":"area","type":"String"},"b_address":{"define":"b_address","label":"b_address","name":"b_address","relation":"b_address","type":"String"},"build_type_Text":{"define":"build_type_Text","label":"build_type_Text","name":"build_type_Text","relation":"build_type_Text","type":"String"},"building_name":{"define":"building_name","name":"building_name","relation":"building_name","type":"String"},"content":{"define":"content","label":"content","name":"content","relation":"content","type":"String"},"use_type_Text":{"define":"use_type_Text","label":"use_type_Text","name":"use_type_Text","relation":"use_type_Text","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","limit":20,"xid":"buildData"});
}}); 
return __result;});