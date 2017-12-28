define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/bootstrap/form/form');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/fragment/list/listTable');
require('$model/UI2/system/components/bootstrap/table/table');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/deploy/app/selectPlugins'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='false';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cEvU7vm';
	this._flag_='2a9fc2bc05dfdba707f5cdb55564cee8';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"checked":{"define":"checked","label":"选择","name":"checked","relation":"checked","type":"Boolean"},"dependency":{"define":"dependency","label":"Dependency","name":"dependency","relation":"dependency","type":"String"},"description":{"define":"description","label":"描述","name":"description","relation":"description","type":"String"},"hasParams":{"define":"hasParams","label":"需要配置参数","name":"hasParams","relation":"hasParams","type":"Boolean"},"id":{"define":"id","label":"插件ID","name":"id","relation":"id","type":"String"},"name":{"define":"name","label":"插件名称","name":"name","relation":"name","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":-1,"xid":"pluginsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"defaultValue":{"define":"defaultValue","label":"默认值","name":"defaultValue","relation":"defaultValue","type":"String"},"displayName":{"define":"displayName","label":"属性显示名","name":"displayName","relation":"displayName","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"},"name":{"define":"name","label":"属性名","name":"name","relation":"name","type":"String"},"platform":{"define":"platform","label":"系统","name":"platform","relation":"platform","type":"String"},"type":{"define":"type","label":"数据类型","name":"type","relation":"type","type":"String"},"value":{"define":"value","label":"属性值","name":"value","relation":"value","type":"String"},"values":{"define":"values","label":"取值列表","name":"values","relation":"values","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[]","isMain":false,"limit":-1,"xid":"pluginsConfigData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"},"value":{"define":"value","label":"Value","name":"value","relation":"value","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"value\":\"全部\"},{\"id\":\"2\",\"value\":\"已选择\"},{\"id\":\"3\",\"value\":\"未选择\"}]","isMain":false,"limit":20,"xid":"filterData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"value":{"define":"value","label":"值","name":"value","relation":"value","type":"String"}},"directDelete":false,"events":{},"idColumn":"value","initData":"[]","isMain":false,"limit":20,"xid":"itemData"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var __ListTable__ = require("$UI/system/components/fragment/list/listTable");__ListTable__.dataEventBind(this,'pluginsData','pluginsConfigData','id');
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});