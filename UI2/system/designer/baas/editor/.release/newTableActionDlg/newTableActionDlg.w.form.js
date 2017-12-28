define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/designer/baas/editor/newTableActionDlg'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cIfQbym';
	this._flag_='b87d366b50cf4cb6d3953ee30fb202db';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"db":{"define":"db","label":"数据库","name":"db","relation":"db","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"needQueryAction":{"define":"needQueryAction","label":"创建queryAction","name":"needQueryAction","relation":"needQueryAction","type":"Boolean"},"needSaveAction":{"define":"needSaveAction","label":"创建saveAction","name":"needSaveAction","relation":"needSaveAction","type":"Boolean"},"queryAction":{"define":"queryAction","label":"queryAction","name":"queryAction","relation":"queryAction","type":"String"},"saveAction":{"define":"saveAction","label":"saveAction","name":"saveAction","relation":"saveAction","type":"String"},"table":{"define":"table","label":"表","name":"table","relation":"table","type":"String"}},"directDelete":false,"events":{"onValueChanged":"dataMainValueChanged"},"idColumn":"id","initData":"[{\"id\":\"0001\",\"needQueryAction\":true,\"needSaveAction\":true}]","isMain":false,"limit":-1,"xid":"dataMain"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"db":{"define":"db","label":"db","name":"db","relation":"db","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"dataDBsCustomRefresh"},"idColumn":"db","isMain":false,"limit":-1,"xid":"dataDBs"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"db":{"define":"db","label":"db","name":"db","relation":"db","type":"String"},"table":{"define":"table","label":"table","name":"table","relation":"table","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"dataTablesCustomRefresh"},"idColumn":"table","isMain":false,"limit":-1,"xid":"dataTables"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});