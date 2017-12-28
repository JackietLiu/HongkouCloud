define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/shiquanBlock/cooperation/coop_index/pay_detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cJVFrmq';
	this._flag_='022ac2f2bc92a9e4e61169933d711f53';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"Pay_less":{"define":"Pay_less","label":"Pay_less","name":"Pay_less","relation":"Pay_less","type":"String"},"Pay_less_memo":{"define":"Pay_less_memo","label":"Pay_less_memo","name":"Pay_less_memo","relation":"Pay_less_memo","type":"String"},"audit_date_txt":{"define":"audit_date_txt","label":"audit_date_txt","name":"audit_date_txt","relation":"audit_date_txt","type":"String"},"b_address":{"define":"b_address","label":"b_address","name":"b_address","relation":"b_address","type":"String"},"contrat_no":{"define":"contrat_no","label":"contrat_no","name":"contrat_no","relation":"contrat_no","type":"String"},"invoice_no":{"define":"invoice_no","label":"invoice_no","name":"invoice_no","relation":"invoice_no","type":"String"},"is_audit":{"define":"is_audit","label":"is_audit","name":"is_audit","relation":"is_audit","type":"String"},"je_rent":{"define":"je_rent","label":"je_rent","name":"je_rent","relation":"je_rent","type":"String"},"je_wp_txt":{"define":"je_wp_txt","label":"je_wp_txt","name":"je_wp_txt","relation":"je_wp_txt","type":"String"},"memo":{"define":"memo","label":"memo","name":"memo","relation":"memo","type":"String"},"pay_date_txt":{"define":"pay_date_txt","label":"pay_date_txt","name":"pay_date_txt","relation":"pay_date_txt","type":"String"},"pay_mode_txt":{"define":"pay_mode_txt","label":"pay_mode_txt","name":"pay_mode_txt","relation":"pay_mode_txt","type":"String"},"payer_Name":{"define":"payer_Name","label":"payer_Name","name":"payer_Name","relation":"payer_Name","type":"String"},"rent_txt":{"define":"rent_txt","label":"rent_txt","name":"rent_txt","relation":"rent_txt","type":"String"},"user_audit":{"define":"user_audit","label":"user_audit","name":"user_audit","relation":"user_audit","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","limit":20,"xid":"paydata"});
}}); 
return __result;});