<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:118px;top:263px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="listData" idColumn="id" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="xid1"></column>
   <column label="标题" name="title" type="String" xid="xid2"></column>
   <column label="时间" name="time" type="String" xid="xid3"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-weight:normal;font-size:20px;background-color:#37b9ed;height:48px;" title="公示公告">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i7" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a></div> 
     <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">公示公告</div>
     <div class="x-titlebar-right reverse" xid="right1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" onClick="button8Click">
       <i xid="i16" class="icon-refresh"></i>
       <span xid="span23"></span></a> 
  </div> </div> 
    </div> 
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
     <div class="x-contents-content x-left-to-center  x-scroll-view" xid="noticeFile" onActive="noticeFileActive">
       
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullDown="scrollView1PullDown">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span2">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="listData" limit="10" autoLoad="true">
       <ul class="x-list-template" xid="listTemplateUl1">
        <li xid="li1" bind-click="li1Click" style="padding:10px 0;border-bottom:1px solid #e5e5e5;">
         <div class="media" xid="media1">
          <div class="media-left" xid="mediaLeft1">
           <a href="#" xid="a1">
            <img class="media-object" src="" alt="" xid="image1"></img></a> </div> 
          <div class="media-body" xid="mediaBody1">
           <h4 xid="h41" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
           <span xid="span1" style="color:#989898;font-size:10px;">发布时间：</span>
           <span xid="span3" bind-text='ref("time")' style="color:#989898;font-size:10px;"></span></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div></div> 
     </div> </div> 
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="noticeDetail" routable="true" forceRefreshOnOpen="true"></span></div>