define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/system/templates/common/homePageKind'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='czqaMna';
	this._flag_='315eb3cb0ca80773495f0ad765d56dd1';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"label":{"define":"label","label":"显示值","name":"label","relation":"label","type":"String"},"value":{"define":"value","label":"值","name":"value","relation":"value","type":"String"}},"directDelete":false,"events":{},"idColumn":"value","initData":"[{\"value\":\"1\",\"label\":\"是\"},{\"value\":\"2\",\"label\":\"否\"}]","isMain":false,"limit":20,"xid":"data1"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"label":{"define":"label","label":"显示值","name":"label","relation":"label","type":"String"},"value":{"define":"value","label":"值","name":"value","relation":"value","type":"String"}},"directDelete":false,"events":{},"idColumn":"value","initData":"[{\"value\":\"1\",\"label\":\"是\"},{\"value\":\"2\",\"label\":\"否\"}]","isMain":false,"limit":20,"xid":"data4"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"label":{"define":"label","label":"显示值","name":"label","relation":"label","type":"String"},"value":{"define":"value","label":"值","name":"value","relation":"value","type":"String"}},"directDelete":false,"events":{},"idColumn":"value","initData":"[{\"value\":\"1\",\"label\":\"是\"},{\"value\":\"2\",\"label\":\"否\"}]","isMain":false,"limit":20,"xid":"data5"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"leftMenu":{"define":"leftMenu","label":"leftMenu","name":"leftMenu","relation":"leftMenu","rules":{"readonly":"$model.data6.val(\"wing\") == 2"},"type":"String"},"main":{"define":"main","label":"main","name":"main","relation":"main","type":"String"},"wing":{"define":"wing","label":"wing","name":"wing","relation":"wing","type":"String"}},"directDelete":false,"events":{"onCustomNew":"data6CustomNew"},"idColumn":"wing","isMain":false,"limit":20,"xid":"data6"});
}}); 
return __result;});