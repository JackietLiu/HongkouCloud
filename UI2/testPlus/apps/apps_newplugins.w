<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:166px;left:9px;"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="indexApp" idColumn="appName"><column label="appName" name="appName" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="pluginsData" idColumn="ID" confirmRefresh="false" onCustomRefresh="pluginsDataCustomRefresh">
   <column name="ID" type="String" xid="column1"></column>
   <column name="ApplicationName" type="String" xid="column2"></column>
   <column name="ApplicationPathIn" type="String" xid="column3"></column>
   <column name="ApplicationImagePath" type="String" xid="column4"></column>
   <column name="type" type="String" xid="column5"></column>
   <column name="AppStatus" type="String" xid="column6"></column>
   <column name="Size" type="String" xid="column7"></column>
   <column name="ApplicationMemo" type="String" xid="column8"></column>
   <column name="ApkPath" type="String" xid="xid9"></column></div></div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver1">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content" xid="div2" style="background-color:#fff;width:300;height:120;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="text-align:center;height:50%;">
     <div class="x-col" xid="col1" style="height:40px;">
      <label xid="label1"><![CDATA[确定添加该插件吗？]]></label>
      </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="height:40%;">
     <div class="x-col" xid="col4" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn x-purple" xid="button2" label="确定" onClick="button2Click" style="width:100px;">
       <i xid="i3"></i>
       <span xid="span2">确定</span></a> </div> 
     <div class="x-col" xid="col5" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="取消" xid="button3" onClick="{operation:'popOver1.hide'}" style="color:#000;width:100px;">
       <i xid="i3"></i>
       <span xid="span3">取消</span></a> </div> </div> </div> </div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" title="最新插件" class="x-titlebar" style="background-color:#37b9ed;" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
       
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="{operation:'window.close'}" icon="linear linear-arrowleft">
   <i xid="i7" class="linear linear-arrowleft"></i>
   <span xid="span1"></span></a></div> 
     <div class="x-titlebar-title" style="font-weight:normal;" xid="title1">最新插件</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="appList" data="pluginsData" autoLoad="true" filter=' $row.val("type") == 02  &amp;&amp;  $row.val("AppStatus") == "审核"'>
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
        <div class="x-col x-col-10" xid="col18" style="line-height:70px;text-align:center;font-size:25px;height:80px;">
         <span xid="span4"><![CDATA[]]></span></div> 
        <div class="x-col" xid="col51" style="text-align:center;">
         <img src="" alt="" xid="image2" style="border-radius:5px;width:70px;" bind-attr-src=' $model.getImageUrl( $object.val("ApplicationImagePath"))' height="70px"></img></div> 
        <div class="x-col x-col-50" xid="col21">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
          <div class="x-col" xid="col45">
           <span xid="span5" bind-text="ref('ApplicationName')"></span></div> </div> 
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17">
          <div class="x-col" xid="col41">
           <span xid="span7" style="color:#919191;" bind-text="ref('ApplicationMemo')"><![CDATA[]]></span>
           <span xid="span8" style="color:#919191;padding:3px;" bind-text="ref('download')"></span></div> 
          </div> </div> 
        <div class="x-col" xid="col22" style="text-align:center;line-height:65px;">
          
  <div xid="div"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" xid="addToMainBtn" style="color:#37b9ed;" icon="icon-plus-circled" onClick="addToMainBtnClick">
          <i xid="i1" class="un icon-plus-circled"></i>
          <span xid="span11"></span></a></div></div> </div> </li> </ul> </div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" type="OKCancel" style="top:55px;left:22px;"></span></div>