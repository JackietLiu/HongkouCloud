window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_e921de69fd264d7d977490039e8a19fel_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_405d1d63bb4d4c008e571bd2956d906fl_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_7057428cf64a4ea78bad5d64cdf489d2l_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_108e2938304d4d3b87aaa8305227f337l_zh_CNs_desktopd_pc/system/core.min.js','/v_197aef37eee84c8eb0ab5b91926c43f3l_zh_CNs_desktopd_pc/system/common.min.js','/v_15d17273d53e42528fcbff605f029699l_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/bootstrap/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/index_link/dynamicDetail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c6VRrqe';
	this._flag_='07c468e96c462de715c3c65394d2bec5';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"dID":{"define":"dID","label":"动态id","name":"dID","relation":"dID","type":"String"},"pContent":{"define":"pContent","label":"评论内容","name":"pContent","relation":"pContent","type":"String"},"pDate":{"define":"pDate","label":"评论时间","name":"pDate","relation":"pDate","rules":{"datetime":true},"type":"DateTime"},"pID":{"define":"pID","label":"评论id","name":"pID","relation":"pID","type":"String"},"pImage":{"define":"pImage","label":"发表图片","name":"pImage","relation":"pImage","type":"String"},"pName":{"define":"pName","label":"评论者","name":"pName","relation":"pName","type":"String"}},"directDelete":false,"events":{},"idColumn":"pID","isMain":false,"limit":20,"xid":"commentData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"FCB":{"define":"FCB","name":"FCB","relation":"FCB","type":"String"},"createTime":{"define":"createTime","name":"createTime","relation":"createTime","rules":{"datetime":true},"type":"DateTime"},"id":{"define":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{},"idColumn":"FCB","isMain":false,"limit":20,"xid":"dynamicData"});
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"dID":{"define":"dID","label":"动态ID","name":"dID","relation":"dID","type":"String"},"pContent":{"define":"pContent","label":"评论内容","name":"pContent","relation":"pContent","type":"String"},"pDate":{"define":"pDate","label":"评论时间","name":"pDate","relation":"pDate","type":"String"},"pID":{"define":"pID","label":"pID","name":"pID","relation":"pID","type":"String"},"pImage":{"define":"pImage","label":"评论人头像","name":"pImage","relation":"pImage","type":"String"},"pName":{"define":"pName","label":"评论人姓名","name":"pName","relation":"pName","type":"String"},"type":{"define":"type","label":"评论类型：0为专题工作评论，1为软件评论","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"pID","isMain":false,"limit":20,"orderBys":[{"relation":"pDate","type":0}],"queryAction":"queryComment","saveAction":"saveComment","tableName":"comment","url":"/hongkou/hongkou","xid":"cmtData"});
}}); 
return __result;});
