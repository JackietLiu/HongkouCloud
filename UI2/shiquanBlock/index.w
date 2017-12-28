<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:168px;left:344px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="uID">
   <column label="uID" name="uID" type="String" xid="xid1"></column>
   <column label="phoneNumber" name="phoneNumber" type="String" xid="xid2"></column>
   <column label="PassWord" name="PassWord" type="String" xid="xid3"></column>
   <column label="img" name="img" type="String" xid="xid4"></column>
   <column label="realName" name="realName" type="String" xid="xid5"></column>
   <column label="uName" name="uName" type="String" xid="xid6"></column>
   <column label="age" name="age" type="String" xid="xid7"></column>
   <column label="department" name="department" type="String" xid="xid8"></column>
   <column label="ofiice" name="ofiice" type="String" xid="xid9"></column>
   <column name="col9" type="String" xid="xid10"></column></div></div> 

  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing" display="push" animate="false">
   <div class="x-wing-left" xid="left" style="background-color:#007afe;">
  
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content2"><div xid="div4" style="padding:15px 0 0 10px;"><div xid="div2" style="height:150px;background-color:rgb(5,58,123);" align="center" class="media-body"><img src="$UI/shiquanBlock/person/3.png" alt="" xid="image1" height="80px" style="margin-top:30px;width:80px;" class="shadow"></img>
  <div xid="div3" align="center" style="margin-top:10px;"><span xid="span1" style="color:#fff;" bind-text='userData.ref("uName")'><![CDATA[NAME]]></span></div></div></div><div xid="div5" style="color:#fff;padding-left:10px;"><div class="media" xid="media1" style="border-bottom:1px solid rgb(205,205,205);padding:10px 0;margin-left:10px;">
   <div class="media-left" xid="mediaLeft1">
    <i xid="i1"></i></div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41" style="font-size:15px;color:#fff;"><![CDATA[我的资料]]></h4></div> </div>
  <div xid="div6" style="border-bottom:1px solid rgb(205,205,205);padding:10px 0;margin-left:10px;"><span xid="span2"><![CDATA[姓名：]]></span>
  <span xid="span3" bind-text='userData.val("realName")'></span></div>
  <div xid="div8" style="border-bottom:1px solid rgb(205,205,205);padding:10px 0;margin-left:10px;">
   <span xid="span4"><![CDATA[年龄：]]></span>
   <span xid="span5" bind-text='userData.val("age")'></span></div>
  <div xid="div9" style="border-bottom:1px solid rgb(205,205,205);padding:10px 0;margin-left:10px;">
   <span xid="span6"><![CDATA[部门：]]></span>
   <span xid="span7" bind-text='userData.val("department")'></span></div>
  <div xid="div10" style="border-bottom:1px solid rgb(205,205,205);padding:10px 0;margin-left:10px;">
   <span xid="span8"><![CDATA[职位：]]></span>
   <span xid="span9" bind-text='userData.val("office")'></span></div></div></div>
   <div class="x-panel-bottom" xid="bottom1" height="40">
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs pull-right" label="退出" xid="exit" style="width:60px;" onClick="exitClick">
   <i xid="i3"></i>
   <span xid="span11">退出</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs pull-right" label="密码修改" xid="newPwd" style="width:80px;" onClick="{operation:'updateOver.show'}">
   <i xid="i2"></i>
   <span xid="span10">密码修改</span></a></div></div></div>
   <div class="x-wing-content" xid="content1">
    <div class="x-wing-backdrop" xid="div1"></div><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="pages" swipe="false">
   </div></div> 
   </div>
  <resource xid="resource2"><require xid="require2" url="css!$UI/iconfont/iconfont.icons"></require>
  <require xid="require3" url="css!$UI/font-awesome-4.5.0/css/fa.icons"></require></resource>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="updateOver" dismissible="false">
   <div class="x-popOver-overlay" xid="div11"></div>
   <div class="x-popOver-content" xid="div12" style="width:250px;height:350px;background-color:white;">
  <div xid="div13" style="padding:10px 5px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><label xid="label1" style="font-size:18px;"><![CDATA[密码修改]]></label></div>
   <div class="x-col" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button3" icon="img:$UI/shiquanBlock/newImage/close.png|" onClick="{operation:'updateOver.hide'}">
   <i xid="i4"></i>
   <img src="$UI/shiquanBlock/newImage/close.png" xid="image3" style="width:15px;"></img><span xid="span12"></span></a></div></div></div>
  <div xid="div15" style="color:#989898;">
   <div xid="div14" style="font-size:16px;color:#padding-left:40px;">
    <span xid="span13" style="padding-left:20px;font-size:12px;font-weight:bold;"><![CDATA[用户名]]></span></div> 
    
  <div xid="div16" style="padding:0 20px;"><div class="media pop" xid="media2" style="line-height:36px;height:40px;">
   <div class="media-left" xid="mediaLeft2">
    <img src="$UI/shiquanBlock/newImage/user.png" alt="" xid="image6" height="20px" style="margin-left:10px;"></img></div> 
   <div class="media-body" xid="mediaBody2">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="border:0;color:#989898"></input></div> </div></div></div>
  <div xid="div19" style="color:#989898;">
   <div xid="div18" style="font-size:16px;color:#padding-left:40px;">
    <span xid="span14" style="padding-left:20px;font-size:12px;font-weight:bold;"><![CDATA[原密码]]></span></div> 
   <div xid="div17" style="padding:0 20px;">
    <div class="media pop" xid="media3" style="line-height:36px;height:40px;">
     <div class="media-left" xid="mediaLeft3">
      <img src="$UI/shiquanBlock/newImage/locks.png" alt="" xid="image7" height="20px" style="margin-left:10px;"></img></div> 
     <div class="media-body" xid="mediaBody3">
      <input component="$UI/system/components/justep/input/password" class="form-control" xid="oldPassword" style="border:0;color:#989898;"></input></div> </div> </div> </div>
  <div xid="div22" style="color:#989898;">
   <div xid="div21" style="font-size:16px;color:#padding-left:40px;">
    <span xid="span15" style="padding-left:20px;font-size:12px;font-weight:bold;"><![CDATA[新密码]]></span></div> 
   <div xid="div20" style="padding:0 20px;">
    <div class="media pop" xid="media4" style="line-height:36px;height:40px;">
     <div class="media-left" xid="mediaLeft4">
      <img src="$UI/shiquanBlock/newImage/locks.png" alt="" xid="image8" height="20px" style="margin-left:10px;"></img></div> 
     <div class="media-body" xid="mediaBody4">
      <input component="$UI/system/components/justep/input/password" class="form-control" xid="newPassword" style="border:0;color:#989898;"></input></div> </div> </div> </div>
  <div xid="div23" style="padding:20px 20px;" align="center"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="sureBtn" style="background-color:#007afe;">
   <i xid="i5"></i>
   <span xid="span16">确定</span></a></div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="loginDialog" src="./login.w"></span></div>