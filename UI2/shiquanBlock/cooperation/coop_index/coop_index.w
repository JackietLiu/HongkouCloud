<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:38px;left:105px;height:auto;"></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="indexContent"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" height="58"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;" title="首页">
    <div class="x-titlebar-left" xid="left1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="backToMain" icon="icon-reply-all" label="主页" onClick="backToMainClick">
      <i xid="i2" class="icon-reply-all"></i>
      <span xid="span7" style="font-size:12px;">主页</span></a> </div> 
    <div class="x-titlebar-title" xid="title1">首页</div>
    <div class="x-titlebar-right reverse" xid="right1">
     </div> </div>
  </div>
   <div class="x-panel-content" xid="content3">
  
  
  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content" xid="propertContent"><div xid="div1" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;" bind-click="div1Click"><div class="media" xid="media1" style="width:200px;height:80px;">
   <div class="media-left" xid="mediaLeft1">
    <img src="$UI/shiquanBlock/newImage/coop_shequ.png" alt="" xid="image1" height="70px" style="width:70px;"></img></div> 
   <div class="media-body" xid="mediaBody1">
    <label xid="label1" style="font-size:large;font-weight:bold;"><![CDATA[社区协作]]></label></div> </div></div><div xid="div2" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;" bind-click="changePage">
   <div class="media" xid="media2" style="width:200px;height:80px;">
    <div class="media-left" xid="mediaLeft2">
     <img src="$UI/shiquanBlock/newImage/coop_propert.png" alt="" xid="image2" height="70px" style="width:70px;"></img></div> 
    <div class="media-body" xid="mediaBody2">
     <label xid="label2" style="font-size:large;font-weight:bold;"><![CDATA[资产管理]]></label></div> </div> </div><div xid="div3" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;">
   <div class="media" xid="media3" style="width:200px;height:80px;" bind-click="alertClick">
    <div class="media-left" xid="mediaLeft3">
     <img src="$UI/shiquanBlock/newImage/coop-newBuilding.png" alt="" xid="image3" height="70px" style="width:70px;"></img></div> 
    <div class="media-body" xid="mediaBody3">
     <label xid="label3" style="font-size:large;font-weight:bold;"><![CDATA[党建工作]]></label></div> </div> </div><div xid="div4" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;">
   <div class="media" xid="media4" style="width:200px;height:80px;" bind-click="alertClick">
    <div class="media-left" xid="mediaLeft4">
     <img src="$UI/shiquanBlock/newImage/coop_newRoad.png" alt="" xid="image4" height="70px" style="width:70px;"></img></div> 
    <div class="media-body" xid="mediaBody4">
     <label xid="label4" style="font-size:large;font-weight:bold;"><![CDATA[商会工作]]></label></div> </div> </div></div>
  </div></div>
   </div>
  </div>
  <div class="x-contents-content" xid="companyContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="companyContainer" src="$UI/shiquanBlock/enterprise/enterprise_search.w"></div></div>
  <div class="x-contents-content" xid="innerContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="innerContainer"></div>
  <img src="$UI/shiquanBlock/img/jianse.jpg" alt="" xid="image6" height="100%" style="width:100%;"></img></div>
  <div class="x-contents-content" xid="dynamicContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="dynamicContainer"></div>
  <img src="$UI/shiquanBlock/img/jianse.jpg" alt="" xid="image7" height="100%" style="width:100%;"></img></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="height:100%;" selected="coopBtn">
   
   
   
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="协作管理" xid="coopBtn" target="indexContent">
   <i xid="i1"></i>
   <span xid="span1">协作管理</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="企业管理" xid="companyBtn" target="companyContent">
   <i xid="i4"></i>
   <span xid="span2">企业管理</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="内部管理" xid="innerBtn" target="innerContent">
   <i xid="i5"></i>
   <span xid="span3">内部管理</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="近期动态" xid="dynamicBtn" target="dynamicContent">
   <i xid="i6"></i>
   <span xid="span4">近期动态</span></a></div></div></div></div>