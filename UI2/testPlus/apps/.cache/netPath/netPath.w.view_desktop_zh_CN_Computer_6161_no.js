window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_6161_nol_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_6161_nol_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_6161_nol_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_6161_nol_zh_CNs_desktopd_pc/system/core.min.js','/v_6161_nol_zh_CNs_desktopd_pc/system/common.min.js','/v_6161_nol_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/bootstrap/progress/progress');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/attachment/attachmentSimple');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/apps/netPath'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cfIbiai';
	this._flag_='af6d5916b8dd03243f8d1fb90811a223';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"fDownloadPath":{"define":"fDownloadPath","label":"下载地址","name":"fDownloadPath","relation":"fDownloadPath","type":"String"},"fFileName":{"define":"fFileName","label":"文件名","name":"fFileName","relation":"fFileName","type":"String"},"fId":{"define":"fId","label":"fId","name":"fId","relation":"fId","type":"String"},"fileSize":{"define":"fileSize","label":"文件大小","name":"fileSize","relation":"fileSize","type":"String"}},"directDelete":false,"events":{},"idColumn":"fId","isMain":false,"limit":20,"xid":"filesData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fileName":{"define":"fileName","name":"fileName","relation":"fileName","type":"String"},"id":{"define":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onValueChanged":"dataValueChanged"},"idColumn":"id","initData":"[{\"id\":\"1\",\"fileName\":\"\"}]","isMain":false,"limit":-1,"xid":"data"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":false,"defCols":{"id":{"define":"id","label":"userID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"xid":"userData"});
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fAddress":{"define":"fAddress","label":"地理位置","name":"fAddress","relation":"fAddress","type":"String"},"fCreateTime":{"define":"fCreateTime","label":"建立时间","name":"fCreateTime","relation":"fCreateTime","type":"String"},"fDescription":{"define":"fDescription","label":"描述","name":"fDescription","relation":"fDescription","type":"String"},"fDownloadPath":{"define":"fDownloadPath","label":"下载地址","name":"fDownloadPath","relation":"fDownloadPath","type":"String"},"fFileName":{"define":"fFileName","label":"fFileName","name":"fFileName","relation":"fFileName","type":"String"},"fFileSize":{"define":"fFileSize","label":"文件大小","name":"fFileSize","relation":"fFileSize","type":"String"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","type":"String"},"fPositioning":{"define":"fPositioning","label":"定位","name":"fPositioning","relation":"fPositioning","type":"String"},"fPreviewPath":{"define":"fPreviewPath","label":"预览地址","name":"fPreviewPath","relation":"fPreviewPath","type":"String"},"fUser":{"define":"fUser","label":"fUser","name":"fUser","relation":"fUser","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","isMain":false,"limit":20,"queryAction":"queryPai_pictures","saveAction":"savePai_pictures","tableName":"pai_pictures","url":"/hongkou/hongkou","xid":"paiData"});
 new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Birthday":{"define":"Birthday","label":"Birthday","name":"Birthday","relation":"Birthday","type":"String"},"DeptCode":{"define":"DeptCode","label":"DeptCode","name":"DeptCode","relation":"DeptCode","type":"String"},"DeptName":{"define":"DeptName","label":"DeptName","name":"DeptName","relation":"DeptName","type":"String"},"Dept_Code1":{"define":"Dept_Code1","label":"Dept_Code1","name":"Dept_Code1","relation":"Dept_Code1","type":"String"},"Dept_Code2":{"define":"Dept_Code2","label":"Dept_Code2","name":"Dept_Code2","relation":"Dept_Code2","type":"String"},"Email":{"define":"Email","label":"邮箱","name":"Email","relation":"Email","type":"String"},"Email_Pass":{"define":"Email_Pass","label":"Email_Pass","name":"Email_Pass","relation":"Email_Pass","type":"String"},"Email_User":{"define":"Email_User","label":"Email_User","name":"Email_User","relation":"Email_User","type":"String"},"Fax_Net":{"define":"Fax_Net","label":"Fax_Net","name":"Fax_Net","relation":"Fax_Net","type":"String"},"Fax_No":{"define":"Fax_No","label":"Fax_No","name":"Fax_No","relation":"Fax_No","type":"String"},"Fax_Virtul":{"define":"Fax_Virtul","label":"Fax_Virtul","name":"Fax_Virtul","relation":"Fax_Virtul","type":"String"},"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"ID_No":{"define":"ID_No","label":"ID_No","name":"ID_No","relation":"ID_No","type":"String"},"ID_Type":{"define":"ID_Type","label":"ID_Type","name":"ID_Type","relation":"ID_Type","type":"String"},"JobName":{"define":"JobName","label":"JobName","name":"JobName","relation":"JobName","type":"String"},"Mobile_No":{"define":"Mobile_No","label":"Mobile_No","name":"Mobile_No","relation":"Mobile_No","type":"String"},"Party_Title":{"define":"Party_Title","label":"Party_Title","name":"Party_Title","relation":"Party_Title","type":"String"},"Person_Type":{"define":"Person_Type","label":"Person_Type","name":"Person_Type","relation":"Person_Type","type":"String"},"Politic":{"define":"Politic","label":"Politic","name":"Politic","relation":"Politic","type":"String"},"Right_Level":{"define":"Right_Level","label":"Right_Level","name":"Right_Level","relation":"Right_Level","type":"String"},"Sex":{"define":"Sex","label":"性别","name":"Sex","relation":"Sex","rules":{"integer":true},"type":"Integer"},"Sort_Index":{"define":"Sort_Index","label":"Sort_Index","name":"Sort_Index","relation":"Sort_Index","type":"String"},"Tel_Office1":{"define":"Tel_Office1","label":"Tel_Office1","name":"Tel_Office1","relation":"Tel_Office1","type":"String"},"Tel_Office2":{"define":"Tel_Office2","label":"Tel_Office2","name":"Tel_Office2","relation":"Tel_Office2","type":"String"},"Title_Level":{"define":"Title_Level","label":"Title_Level","name":"Title_Level","relation":"Title_Level","type":"String"},"TitlesName":{"define":"TitlesName","label":"TitlesName","name":"TitlesName","relation":"TitlesName","type":"String"},"UserName_Real":{"define":"UserName_Real","label":"UserName_Real","name":"UserName_Real","relation":"UserName_Real","type":"String"},"activitiSync":{"define":"activitiSync","label":"同步流程","name":"activitiSync","relation":"activitiSync","rules":{"integer":true},"type":"Integer"},"browser":{"define":"browser","label":"浏览器","name":"browser","relation":"browser","type":"String"},"delete_flag":{"define":"delete_flag","label":"删除状态","name":"delete_flag","relation":"delete_flag","rules":{"integer":true},"type":"Integer"},"departid":{"define":"departid","label":"部门ID","name":"departid","relation":"departid","type":"String"},"headerImg":{"define":"headerImg","label":"headerImg","name":"headerImg","relation":"headerImg","type":"String"},"memo":{"define":"memo","label":"memo","name":"memo","relation":"memo","type":"String"},"password":{"define":"password","label":"密码","name":"password","relation":"password","type":"String"},"realname":{"define":"realname","label":"真实名字","name":"realname","relation":"realname","type":"String"},"signature":{"define":"signature","label":"签名","name":"signature","relation":"signature","type":"String"},"status":{"define":"status","label":"有效状态","name":"status","relation":"status","rules":{"integer":true},"type":"Integer"},"userkey":{"define":"userkey","label":"用户KEY","name":"userkey","relation":"userkey","type":"String"},"username":{"define":"username","label":"用户账号","name":"username","relation":"username","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","isMain":false,"limit":20,"queryAction":"queryUsers2","tableName":"t_s_base_user","url":"/hongkou/hongkou","xid":"personData"});
}}); 
return __result;});
