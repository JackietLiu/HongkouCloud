define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/demo/taobao/cart'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cUVFnmm';
	this._flag_='983ddbffdc2fea92134a4345ab2c1fe9';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fAddress":{"define":"fAddress","label":"所在地区","name":"fAddress","relation":"fAddress","type":"String"},"fChoose":{"define":"fChoose","label":"选择","name":"fChoose","relation":"fChoose","rules":{"integer":true},"type":"Integer"},"fColor":{"define":"fColor","label":"颜色","name":"fColor","relation":"fColor","type":"String"},"fImg":{"define":"fImg","label":"图片","name":"fImg","relation":"fImg","type":"String"},"fNumber":{"define":"fNumber","label":"数量","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fOldPrice":{"define":"fOldPrice","label":"原价格","name":"fOldPrice","relation":"fOldPrice","rules":{"number":true},"type":"Float"},"fPostage":{"define":"fPostage","label":"邮费","name":"fPostage","relation":"fPostage","type":"String"},"fPrice":{"define":"fPrice","label":"价格","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Float"},"fRecord":{"define":"fRecord","label":"买出数量","name":"fRecord","relation":"fRecord","rules":{"integer":true},"type":"Integer"},"fShopID":{"define":"fShopID","label":"店铺ID","name":"fShopID","relation":"fShopID","type":"String"},"fSize":{"define":"fSize","label":"尺寸","name":"fSize","relation":"fSize","type":"String"},"fSum":{"define":"fSum","label":"总价","name":"fSum","relation":"fSum","rules":{"calculate":"$row.val('fChoose')==1?$row.val('fPrice')*$row.val('fNumber'):'0'","number":true},"type":"Float"},"fTitle":{"define":"fTitle","label":"标题","name":"fTitle","relation":"fTitle","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"goodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fConsistent":{"define":"fConsistent","label":"描述相符","name":"fConsistent","relation":"fConsistent","rules":{"number":true},"type":"Float"},"fFocusNumber":{"define":"fFocusNumber","label":"关注人数","name":"fFocusNumber","relation":"fFocusNumber","rules":{"integer":true},"type":"Integer"},"fGoodsNumber":{"define":"fGoodsNumber","label":"商品数量","name":"fGoodsNumber","relation":"fGoodsNumber","rules":{"integer":true},"type":"Integer"},"fLevel":{"define":"fLevel","label":"等级","name":"fLevel","relation":"fLevel","rules":{"integer":true},"type":"Integer"},"fService":{"define":"fService","label":"服务态度","name":"fService","relation":"fService","rules":{"number":true},"type":"Float"},"fShopImg":{"define":"fShopImg","label":"店标","name":"fShopImg","relation":"fShopImg","type":"String"},"fShopName":{"define":"fShopName","label":"店名","name":"fShopName","relation":"fShopName","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"shopDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"shopData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"allNumber":{"define":"allNumber","label":"总数量","name":"allNumber","relation":"allNumber","rules":{"calculate":"$model.goodsData.sum('fChoose')"},"type":"String"},"allSum":{"define":"allSum","label":"合计","name":"allSum","relation":"allSum","rules":{"calculate":"$model.goodsData.sum('fSum')"},"type":"String"},"isBack":{"define":"isBack","label":"是否返回","name":"isBack","relation":"isBack","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"allSum","initData":"[{\"allSum\":\"0\",\"isBack\":0}]","isMain":false,"limit":20,"xid":"calculateData"});
}}); 
return __result;});