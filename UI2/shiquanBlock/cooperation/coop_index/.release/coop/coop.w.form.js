define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/cooperation/coop_index/coop'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cNBRbai';
	this._flag_='c7cc93443c6b610528512e78e2756f85';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"ent_address":{"define":"ent_address","label":"ent_address","name":"ent_address","relation":"ent_address","type":"String"},"ent_name":{"define":"ent_name","label":"ent_name","name":"ent_name","relation":"ent_name","type":"String"},"ent_rep":{"define":"ent_rep","label":"ent_rep","name":"ent_rep","relation":"ent_rep","type":"String"},"ent_type_text":{"define":"ent_type_text","label":"ent_type_text","name":"ent_type_text","relation":"ent_type_text","type":"String"},"run_content":{"define":"run_content","label":"run_content","name":"run_content","relation":"run_content","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","limit":20,"xid":"enterpriseData"});
}}); 
return __result;});