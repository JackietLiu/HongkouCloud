<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" style="top:8px;left:55px;"></span><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver1" direction="left-top">
   <div class="x-popOver-overlay" xid="div10"></div>
   <div class="x-popOver-content" xid="div11" style="background-color:#f3fbff;width:350px;height:450px;">
    <div xid="div12" style="padding-left:30px;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
      <div class="x-col" xid="col21"></div>
      <div class="x-col x-col-10" xid="col20">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button2" icon="icon-android-close" onClick="{operation:'popOver1.hide'}">
        <i xid="i2" class="icon-android-close"></i>
        <span xid="span4"></span></a> </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
      <div class="x-col" xid="col22" style="padding:10px 0;">
       <span xid="span3" style="color:#6085c4;font-size:25px;font-weight:bold;">密码修改</span></div> </div> </div> 
    <div xid="div9">
     <div xid="div14" style="font-size:16px;color:#padding-left:40px;">
      <span xid="span4" style="padding-left:40px;color:#6085c4;font-size:16px;font-weight:bold;">用户账号</span></div> 
     <div xid="div5" style="padding-left:20px;line-height:50px;height:50px;">
      <div xid="div10" style="border:1px solid #c1d3f2;padding:0 10px;float:left;margin-left:20px;background-color:#fff;height:50px;width:50px;" align="center">
       <img src="./images/index_images/phone.png" alt="" xid="image5" height="30px"></img></div> 
      <div xid="div6" style="float:left;width:75%;">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="up_username" style="border-radius:0;border:1px solid #c1d3f2;float:left;float:left;height:50px;width:90%;"></input></div> </div> </div> 
    <div xid="div18">
     <div xid="div19" style="font-size:16px;color:#padding-left:40px;">
      <span xid="span5" style="padding-left:40px;color:#6085c4;font-size:16px;font-weight:bold;">原密码</span></div> 
     <div xid="div8" style="padding-left:20px;line-height:50px;height:50px;">
      <div xid="div4" style="border:1px solid #c1d3f2;padding:0 10px;float:left;margin-left:20px;background-color:#fff;height:50px;width:50px;" align="center">
       <img src="./images/index_images/lock.png" alt="" xid="image2" style="width:20px;"></img></div> 
      <div xid="div7" style="float:left;width:75%;">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="up_password" style="border-radius:0;border:1px solid #c1d3f2;float:left;float:left;height:50px;width:90%;"></input></div> </div> </div> 
    <div xid="div23">
     <div xid="div24" style="font-size:16px;color:#padding-left:40px;">
      <span xid="span6" style="padding-left:40px;color:#6085c4;font-size:16px;font-weight:bold;">修改密码</span></div> 
     <div xid="div21" style="padding-left:20px;line-height:50px;height:50px;">
      <div xid="div25" style="border:1px solid #c1d3f2;padding:0 10px;float:left;margin-left:20px;background-color:#fff;height:50px;width:50px;" align="center">
       <img src="./images/index_images/lock.png" alt="" xid="image5" height="30px" style="width:20px;"></img></div> 
      <div xid="div22" style="float:left;width:75%;">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="newpass" style="border-radius:0;border:1px solid #c1d3f2;float:left;float:left;height:50px;width:90%;"></input></div> </div> </div> 
    <div xid="div26" style="padding:40px;" align="left">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="button3" style="border:none;border-radius:0;line-height:35px;height:50px;background-color:#9591ff;" onClick="button3Click">
      <i xid="i2"></i>
      <span xid="span3" style="font-size:18px;">确定</span></a> </div> </div> </div><div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:34px;top:65px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="forgetPasswordData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/org/login" tableName="sa_opperson" idColumn="sID" limit="20">
   <column label="sID" name="sID" type="String" xid="default1"></column>
   <column label="sName" name="sName" type="String" xid="default2"></column>
   <column label="sCode" name="sCode" type="String" xid="default3"></column>
   <column label="sIDCard" name="sIDCard" type="String" xid="default4"></column>
   <column label="sNumb" name="sNumb" type="Integer" xid="default5"></column>
   <column label="sLoginName" name="sLoginName" type="String" xid="default6"></column>
   <column label="sPassword" name="sPassword" type="String" xid="default7"></column>
   <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default8"></column>
   <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default9"></column>
   <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default10"></column>
   <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default11"></column>
   <column label="sSequence" name="sSequence" type="Integer" xid="default12"></column>
   <column label="sValidState" name="sValidState" type="Integer" xid="default13"></column>
   <column label="sDescription" name="sDescription" type="String" xid="default14"></column>
   <column label="sSex" name="sSex" type="String" xid="default15"></column>
   <column label="sBirthday" name="sBirthday" type="DateTime" xid="default16"></column>
   <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default17"></column>
   <column label="sHomePlace" name="sHomePlace" type="String" xid="default18"></column>
   <column label="sDegree" name="sDegree" type="String" xid="default19"></column>
   <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default20"></column>
   <column label="sSpeciality" name="sSpeciality" type="String" xid="default21"></column>
   <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default22"></column>
   <column label="sTitle" name="sTitle" type="String" xid="default23"></column>
   <column label="sMarriage" name="sMarriage" type="String" xid="default24"></column>
   <column label="sCardNO" name="sCardNO" type="String" xid="default25"></column>
   <column label="sCardKind" name="sCardKind" type="String" xid="default26"></column>
   <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default27"></column>
   <column label="sZip" name="sZip" type="String" xid="default28"></column>
   <column label="sMsn" name="sMsn" type="String" xid="default29"></column>
   <column label="sQQ" name="sQQ" type="String" xid="default30"></column>
   <column label="sMail" name="sMail" type="String" xid="default31"></column>
   <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default32"></column>
   <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default33"></column>
   <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default34"></column>
   <column label="version" name="version" type="Integer" xid="default35"></column>
   <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default37"></column>
   <column label="sCountry" name="sCountry" type="String" xid="default38"></column>
   <column label="sProvince" name="sProvince" type="String" xid="default39"></column>
   <column label="sCity" name="sCity" type="String" xid="default40"></column>
   <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default41"></column>
   <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default42"></column>
   <column label="SSTUDY" name="SSTUDY" type="String" xid="default43"></column>
   <column label="sEnglishName" name="sEnglishName" type="String" xid="default44"></column>
   <column label="1.公司领导；2.部门主管；3.普通员工" name="sFunRole" type="Integer" xid="default45"></column></div>
  </div> 
<div class="x-contents-content" xid="loginContent"><div xid="div1" style="padding-top:100px;height:150px;" align="center"><span xid="span1" class="span1"><![CDATA[虹口政务通]]></span>
  </div>
  <div xid="div15" style="padding:0 20px;">
   
   <div xid="div31" style="line-height:50px;height:50px;">
    <div xid="div32" align="center" class="div_left">
     <img src="./images/index_images/phone.png" alt="" xid="image3" style="width:20px;"></img></div> 
    <div xid="div30" style="float:left;width:75%;">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="username" placeHolder="用户名"></input></div> </div> 
  <div xid="div16" style="margin-top:20px;line-height:50px;height:50px;">
   <div xid="div20" align="center" class="div_left">
    <img src="./images/index_images/lock.png" alt="" xid="image4" style="width:25px;"></img></div> 
   <div xid="div17" style="float:left;width:75%;">
    <input component="$UI/system/components/justep/input/password" class="form-control" xid="password" placeHolder="密码"></input></div> </div>
  <div xid="div2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="密码修改" xid="button1" onClick='{"operation":"popOver1.show"}' icon="dataControl dataControl-permission" style="color:#fff;">
   <i xid="i1" class="dataControl dataControl-permission"></i>
   <span xid="span2">密码修改</span></a>
  </div>
  <div xid="div3" style="margin-left:20px;width:90%;"><a component="$UI/system/components/justep/button/button" class="btn btn-default mybtn" label="登录" xid="loginBtn" onClick="loginBtnClick">
   <i xid="i3"></i>
   <span xid="span7" style="font-size:18px;">登录</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="退出" xid="button4" onClick="button4Click" style="margin-top:10px;color:#fff;">
   <i xid="i4"></i>
   <span xid="span8" style="font-size:18px;">退出</span></a></div></div></div><span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" type="OKCancel" onCancel="messageDialog2Cancel" onOK="messageDialog2OK"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog3" style="top:40px;left:18px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mainDialog" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="exitDialog" type="OKCancel" message="确定退出？" onOK="exitDialogOK"></span></div>