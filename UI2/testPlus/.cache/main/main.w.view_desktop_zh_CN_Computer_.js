window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_75ccc61ffe9142309daedb5feff0dd2el_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_3a414b971e4546eab80ad048e01b7144l_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5089dc8ab363416baea1f1367f3eb9cal_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_8de010bbd3c7498a826bce4c7fb4e6c6l_zh_CNs_desktopd_pc/system/core.min.js','/v_690b3460728848438eaa27510b9b0343l_zh_CNs_desktopd_pc/system/common.min.js','/v_98afed905fb744c2a96c8506863da0a4l_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/wing/child');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/input/password');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/panel/panel');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/bootstrap/carousel/carousel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/wing/wing');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/testPlus/main'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7Ffyma';
	this._flag_='d0ef576a4410ae0fb2f474e1ec2c0978';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Email_Pass":{"define":"Email_Pass","name":"Email_Pass","relation":"Email_Pass","type":"String"},"Email_User":{"define":"Email_User","name":"Email_User","relation":"Email_User","type":"String"},"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"Mobie_No":{"define":"Mobie_No","name":"Mobie_No","relation":"Mobie_No","type":"String"},"Party_Title":{"define":"Party_Title","name":"Party_Title","relation":"Party_Title","type":"String"},"Tel_Office1":{"define":"Tel_Office1","name":"Tel_Office1","relation":"Tel_Office1","type":"String"},"UserName_Real":{"define":"UserName_Real","name":"UserName_Real","relation":"UserName_Real","type":"String"},"image":{"define":"image","name":"image","relation":"image","type":"String"},"intro":{"define":"intro","name":"intro","relation":"intro","type":"String"},"totalMsg":{"define":"totalMsg","name":"totalMsg","relation":"totalMsg","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{"onCustomRefresh":"personDataCustomRefresh"},"idColumn":"ID","isMain":false,"limit":20,"xid":"personData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fileContent":{"define":"fileContent","label":"图片","name":"fileContent","relation":"fileContent","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"},"url":{"define":"url","label":"链接地址","name":"url","relation":"url","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"imgDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"imgData"});
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Email":{"define":"Email","label":"邮箱","name":"Email","relation":"Email","type":"String"},"Sex":{"define":"Sex","label":"性别","name":"Sex","relation":"Sex","rules":{"integer":true},"type":"Integer"},"activitisync":{"define":"activitisync","label":"同步流程","name":"activitisync","relation":"activitisync","rules":{"integer":true},"type":"Integer"},"birthday":{"define":"birthday","label":"birthday","name":"birthday","relation":"birthday","type":"String"},"browser":{"define":"browser","label":"浏览器","name":"browser","relation":"browser","type":"String"},"delete_flag":{"define":"delete_flag","label":"删除状态","name":"delete_flag","relation":"delete_flag","rules":{"integer":true},"type":"Integer"},"departid":{"define":"departid","label":"部门ID","name":"departid","relation":"departid","type":"String"},"deptcode":{"define":"deptcode","label":"deptcode","name":"deptcode","relation":"deptcode","type":"String"},"deptcode1":{"define":"deptcode1","label":"deptCode1","name":"deptcode1","relation":"deptcode1","type":"String"},"deptcode2":{"define":"deptcode2","label":"deptCode2","name":"deptcode2","relation":"deptcode2","type":"String"},"deptname":{"define":"deptname","label":"deptname","name":"deptname","relation":"deptname","type":"String"},"emailpass":{"define":"emailpass","label":"邮箱密码","name":"emailpass","relation":"emailpass","type":"String"},"emailuser":{"define":"emailuser","label":"邮箱用户","name":"emailuser","relation":"emailuser","type":"String"},"faxnet":{"define":"faxnet","label":"faxNet","name":"faxnet","relation":"faxnet","type":"String"},"faxno":{"define":"faxno","label":"传真","name":"faxno","relation":"faxno","type":"String"},"faxvirtul":{"define":"faxvirtul","label":"faxVirtul","name":"faxvirtul","relation":"faxvirtul","type":"String"},"headerimg":{"define":"headerimg","label":"头衔","name":"headerimg","relation":"headerimg","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"},"idno":{"define":"idno","label":"idNo","name":"idno","relation":"idno","type":"String"},"idtype":{"define":"idtype","label":"idType","name":"idtype","relation":"idtype","type":"String"},"jobname":{"define":"jobname","label":"jobname","name":"jobname","relation":"jobname","type":"String"},"locker":{"define":"locker","label":"手势密码","name":"locker","relation":"locker","type":"String"},"memo":{"define":"memo","label":"memo","name":"memo","relation":"memo","type":"String"},"mobileno":{"define":"mobileno","label":"mobileNo","name":"mobileno","relation":"mobileno","type":"String"},"partytitle":{"define":"partytitle","label":"partyTitle","name":"partytitle","relation":"partytitle","type":"String"},"password":{"define":"password","label":"密码","name":"password","relation":"password","type":"String"},"persontype":{"define":"persontype","label":"头衔","name":"persontype","relation":"persontype","type":"String"},"politic":{"define":"politic","label":"politic","name":"politic","relation":"politic","type":"String"},"realname":{"define":"realname","label":"真实名字","name":"realname","relation":"realname","type":"String"},"rightlevel":{"define":"rightlevel","label":"rightLevel","name":"rightlevel","relation":"rightlevel","type":"String"},"signature":{"define":"signature","label":"签名","name":"signature","relation":"signature","type":"String"},"sortindex":{"define":"sortindex","label":"sortIndex","name":"sortindex","relation":"sortindex","type":"String"},"status":{"define":"status","label":"有效状态","name":"status","relation":"status","rules":{"integer":true},"type":"Integer"},"teloffice1":{"define":"teloffice1","label":"办公室电话1","name":"teloffice1","relation":"teloffice1","type":"String"},"teloffice2":{"define":"teloffice2","label":"办公室电话2","name":"teloffice2","relation":"teloffice2","type":"String"},"titlelevel":{"define":"titlelevel","label":"titleLevel","name":"titlelevel","relation":"titlelevel","type":"String"},"titlesname":{"define":"titlesname","label":"titlesname","name":"titlesname","relation":"titlesname","type":"String"},"totalsize":{"define":"totalsize","label":"默认空间","name":"totalsize","relation":"totalsize","rules":{"number":true},"type":"Double"},"userkey":{"define":"userkey","label":"用户KEY","name":"userkey","relation":"userkey","type":"String"},"username":{"define":"username","label":"用户账号","name":"username","relation":"username","type":"String"},"usernamereal":{"define":"usernamereal","label":"姓名","name":"usernamereal","relation":"usernamereal","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","isMain":false,"limit":20,"queryAction":"queryUsers2","tableName":"t_s_base_user","url":"/hongkou/hongkou","xid":"userData"});
}}); 
return __result;});
