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
var __parent0=require('$model/UI2/shiquanBlock/enterprise/enterprise_Detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7rENbi';
	this._flag_='8b078ed818b04f21b4cff85fd0ddeece';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"allin1_no":{"define":"allin1_no","label":"allin1_no","name":"allin1_no","relation":"allin1_no","type":"String"},"ent_address":{"define":"ent_address","label":"ent_address","name":"ent_address","relation":"ent_address","type":"String"},"ent_mail":{"define":"ent_mail","label":"ent_mail","name":"ent_mail","relation":"ent_mail","type":"String"},"ent_name":{"define":"ent_name","label":"ent_name","name":"ent_name","relation":"ent_name","type":"String"},"ent_rep":{"define":"ent_rep","label":"ent_rep","name":"ent_rep","relation":"ent_rep","type":"String"},"ent_type_text":{"define":"ent_type_text","label":"ent_type_text","name":"ent_type_text","relation":"ent_type_text","type":"String"},"fromto":{"define":"fromto","label":"fromto","name":"fromto","relation":"fromto","type":"String"},"license_no":{"define":"license_no","label":"license_no","name":"license_no","relation":"license_no","type":"String"},"memo":{"define":"memo","label":"memo","name":"memo","relation":"memo","type":"String"},"reg_address":{"define":"reg_address","label":"reg_address","name":"reg_address","relation":"reg_address","type":"String"},"reg_capital":{"define":"reg_capital","label":"reg_capital","name":"reg_capital","relation":"reg_capital","type":"String"},"reg_no":{"define":"reg_no","label":"reg_no","name":"reg_no","relation":"reg_no","type":"String"},"run_content":{"define":"run_content","label":"run_content","name":"run_content","relation":"run_content","type":"String"},"run_date":{"define":"run_date","label":"run_date","name":"run_date","relation":"run_date","type":"String"},"setup_date_Txt":{"define":"setup_date_Txt","label":"setup_date","name":"setup_date_Txt","relation":"setup_date_Txt","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","limit":20,"xid":"enterprisedata"});
}}); 
return __result;});