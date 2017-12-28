<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:133px;top:187px;" onLoad="modelLoad" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="appData" idColumn="ID" confirmRefresh="false">
   <column name="ID" type="String" xid="xid1"></column>
  <column name="ApplicationName" type="String" xid="xid2"></column>
  <column name="ApplicationPathIn" type="String" xid="xid3"></column>
  <column name="ApplicationImagePath" type="String" xid="xid4"></column>
  <column name="type" type="String" xid="xid5"></column>
  <column name="AppStatus" type="String" xid="xid6"></column>
  <column label="应用大小" name="Size" type="String" xid="xid7"></column>
  <column label="简介" name="ApplicationMemo" type="String" xid="xid8"></column>
  <column label="应用包名" name="ApkPath" type="String" xid="xid9"></column>
  <column label="URL_Schema" name="ApplicationSchema" type="String" xid="xid10"></column>
  <column name="ApplicationPathOut" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="appsData" queryAction="queryApplications" saveAction="saveApplications" url="/hongkou/hongkou" tableName="application" idColumn="ID" confirmDelete="false" confirmRefresh="false"><column label="id" name="ID" type="String" xid="default26"></column>
  <column label="应用名称" name="ApplicationName" type="String" xid="default27"></column>
  <column label="deptCode" name="Dept_Code" type="String" xid="default28"></column>
  <column label="简称" name="ApplicationName_Short" type="String" xid="default29"></column>
  <column label="苹果下载地址" name="ApplicationPathIn" type="String" xid="default30"></column>
  <column label="安卓下载地址" name="ApplicationPathOut" type="String" xid="default31"></column>
  <column label="internetpath" name="InternetPath" type="String" xid="default32"></column>
  <column label="图标" name="ApplicationImagePath" type="String" xid="default33"></column>
  <column label="哈西码" name="ApplicationHash" type="String" xid="default34"></column>
  <column label="iOS url_scheme" name="ApplicationSchema" type="String" xid="default35"></column>
  <column label="css" name="Css" type="String" xid="default36"></column>
  <column label="简介" name="ApplicationMemo" type="String" xid="default37"></column>
  <column label="sortindex" name="SortIndx" type="Integer" xid="default38"></column>
  <column label="enabled" name="Enabled" type="String" xid="default39"></column>
  <column label="openfield" name="OpenField" type="String" xid="default40"></column>
  <column label="应用类别" name="type" type="String" xid="default41"></column>
  <column label="服务地址" name="NotifyServicePath" type="String" xid="default42"></column>
  <column label="html" name="ApplicationHtml" type="String" xid="default43"></column>
  <column label="size" name="Size" type="String" xid="default44"></column>
  <column label="enablesso" name="EnableSSO" type="Integer" xid="default45"></column>
  <column label="说明" name="App_Desc" type="String" xid="default46"></column>
  <column label="appStatus" name="App_Status" type="String" xid="default47"></column>
  <column label="安卓应用包名" name="Apk_Path" type="String" xid="default48"></column>
  <column label="fcd" name="fcd" type="DateTime" xid="default49"></column>
  <column label="lud" name="lud" type="DateTime" xid="default50"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="appDetailDialog" forceRefreshOnOpen="true" style="left:1px;top:1px;"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="最新发布"
          class="x-titlebar" style="background-color:#37b9ed;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i7" class="linear linear-arrowleft"></i>
   <span xid="span4"></span></a></div>  
          <div class="x-titlebar-title" style="font-weight:normal;">最新发布</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div13" align="center" style="margin-top:30px;" class="hide"></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="appList" data="appData" limit="10" autoLoad="true" disablePullToRefresh="false">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="x-min-height">
     
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col51" style="text-align:center;" bind-click="appListClick"><img src="" alt="" xid="image2" style="height:70px;border-radius:5px;width:70px;" bind-attr-src='$model.getImageUrl(val("ApplicationImagePath"))'></img>
  </div><div class="x-col x-col-50" xid="col21" bind-click="appListClick" style="border-bottom:1px solid #f0f0f0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
   <div class="x-col" xid="col45"><span xid="span5" bind-text='ref("ApplicationName")'></span></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row17">
   <div class="x-col" xid="col41"><span xid="span8" style="color:#919191;" bind-text='ref("Size")'><![CDATA[]]></span></div>
   <div class="x-col" xid="col42"><span xid="span10" style="color:#919191;"><![CDATA[]]></span></div>
   </div>
  </div>
   <div class="x-col" xid="col22" style="border-bottom:1px solid #f0f0f0;text-align:center;line-height:70px;">
  <a name="buttons" component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm btn-only-label" xid="button1" style="color:#6296F4;background-color:#fff;width:63px;">
   <i xid="i1"></i>
   <span xid="span11"></span></a>
  <div name="divs" xid="div1" style="border-radius:10px;border:1px solid #aaa;background:#aaa;height:10px;width:100%;" class="hide"></div></div>
  </div> 
  </li> </ul> 
  </div></div>
  </div> 

  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver2">
   <div class="x-popOver-overlay" xid="div3"></div>
   <div class="x-popOver-content" xid="div4" style="line-height:80px;background-color:white;height:80px;width:300px;"><div xid="div7" align="center"><span xid="span6" style="color:red;font-size:medium;"><![CDATA[本软件目前仅支持安卓用户下载]]></span><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right" label="button" xid="button4" icon="icon-android-close" onClick="{operation:'popOver2.hide'}">
   <i xid="i4" class="icon-android-close"></i>
   <span xid="span9"></span></a></div>
  </div></div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="comfireDialog" type="YesNo" onYes="comfireDialogYes"></span></div>