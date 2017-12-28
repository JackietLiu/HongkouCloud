<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:209px;left:237px;" onActive="modelLoad" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="govementFileData" idColumn="id" confirmRefresh="false"><column label="id" name="id" type="String" xid="xid1"></column>
  <column label="标题" name="title" type="String" xid="xid2"></column>
  <column label="时间" name="date" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="departmentFileData" idColumn="id" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="column1"></column>
   <column label="标题" name="title" type="String" xid="column2"></column>
   <column label="时间" name="date" type="String" xid="column3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="blockFileData" idColumn="id" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="column4"></column>
   <column label="标题" name="title" type="String" xid="column5"></column>
   <column label="时间" name="date" type="String" xid="column6"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="100">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-weight:normal;font-size:20px;height:48px;" title="文件列表">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="{operation:'window.close'}" icon="linear linear-arrowleft">
   <i xid="i7" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a></div> 
     <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">文件列表</div>
     <div class="x-titlebar-right reverse" xid="right1">
      </div> </div> 
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="govermentBtn" style="background-color:#fff;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="区政府" xid="govermentBtn" target="govermentFile">
      <i xid="i1"></i>
      <span xid="span2">区政府</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="部门" xid="partmentBtn" target="partmentFile">
      <i xid="i3"></i>
      <span xid="span4">部门</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="街道" xid="blockBtn" target="blockFile">
      <i xid="i4"></i>
      <span xid="span5">街道</span></a> </div> </div> 
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
     <div class="x-contents-content  x-scroll-view" xid="govermentFile" onactive="govermentBtnClick" onActive="govermentFileActive" supportpulldown="true">
       
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onPullDown="scrollView1PullDown">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span10">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="govermentFileList" data="govementFileData" limit="10" autoLoad="false">
       <ul class="x-list-template" xid="listTemplateUl1">
        <li xid="li1" bind-click="li1Click" style="padding:10px 0;border-bottom:1px solid #e5e5e5;">
         <div class="media" xid="media1">
          <div class="media-left" xid="mediaLeft1">
   <a href="#" xid="a1">
    <img class="media-object" src="" alt="" xid="image1"></img></a> </div><div class="media-body" xid="mediaBody1">
           <h4 xid="h41" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
           <span xid="span1" style="color:#989898;font-size:10px;"><![CDATA[发布时间：]]></span>
  <span xid="span3" bind-text='ref("date")'></span></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span12">加载更多...</span></div> </div></div> 
     <div class="x-contents-content  x-scroll-view" xid="partmentFile" onactive="partmentBtnClick" onActive="partmentFileActive">
       
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" onPullDown="scrollView2PullDown">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span13">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="departmentFileList" data="departmentFileData" limit="10" autoLoad="false">
       <ul class="x-list-template" xid="listTemplateUl2">
        <li xid="li2" bind-click="li1Click" style="padding:10px 0;border-bottom:1px solid #e5e5e5;">
         <div class="media" xid="media2">
          <div class="media-left" xid="mediaLeft2">
           <a href="#" xid="a2">
            <img class="media-object" src="" alt="" xid="image2"></img></a> </div> 
          <div class="media-body" xid="mediaBody2">
           <h4 xid="h42" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
           <span xid="span6" style="color:#989898;font-size:10px;"><![CDATA[发布时间：]]></span>
  <span xid="span8" bind-text='ref("date")'></span></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span14">加载更多...</span></div> </div></div> 
     <div class="x-contents-content  x-scroll-view" xid="blockFile" onActive="blockFileActive" onactive="blockBtnClick">
       
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3" onPullDown="scrollView3PullDown">
   <div class="x-content-center x-pull-down container" xid="div7">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"></i>
    <span class="x-pull-down-label" xid="span15">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div8"><div component="$UI/system/components/justep/list/list" class="x-list" xid="blockFileList" data="blockFileData" limit="10" autoLoad="false">
       <ul class="x-list-template" xid="listTemplateUl3">
        <li xid="li3" bind-click="li1Click" style="padding:10px 0;border-bottom:1px solid #e5e5e5;">
         <div class="media" xid="media3">
          <div class="media-left" xid="mediaLeft3">
           <a href="#" xid="a3">
            <img class="media-object" src="" alt="" xid="image3"></img></a> </div> 
          <div class="media-body" xid="mediaBody3">
           <h4 xid="h43" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
           <span xid="span9" style="color:#989898;font-size:10px;">发布时间：</span><span xid="span7" bind-text='ref("date")'></span>
  </div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div9">
    <span class="x-pull-up-label" xid="span16">加载更多...</span></div> </div></div> </div> </div> 
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="fileDetail" routable="true" style="top:33px;left:72px;"></span></div>