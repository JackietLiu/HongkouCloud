<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:58px;left:0px;height:auto;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="enterpriseData" idColumn="ID" confirmRefresh="false">
   <column label="ent_address" name="ent_address" type="String" xid="xid1"></column>
   <column label="ent_rep" name="ent_rep" type="String" xid="xid2"></column>
   <column label="ent_type_text" name="ent_type_text" type="String" xid="xid3"></column>
   <column label="ID" name="ID" type="String" xid="xid4"></column>
   <column label="ent_name" name="ent_name" type="String" xid="xid5"></column>
   <column label="run_content" name="run_content" type="String" xid="xid6"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full" xid="panel1">
   <div class="x-panel-top" xid="top2" height="100">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;" title="社区协作">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="backBtn" icon="img:$UI/shiquanBlock/newImage/back.png|" onClick='{"operation":"window.close"}'>
       <i xid="i2"></i>
       <img src="$UI/shiquanBlock/newImage/back.png" xid="image6" height="20px"></img>
       <span xid="span7"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">社区协作</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> 
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2" selected="propertBtn">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="企业" xid="propertBtn" target="entContent">
      <i xid="i7"></i>
      <span xid="span9">企业</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="楼宇" xid="rentBtn" target="buildingContent">
      <i xid="i8"></i>
      <span xid="span10">楼宇</span></a> </div> </div> 
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
     <div class="x-contents-content  x-scroll-view" xid="entContent">
      
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div class="media" xid="media1" style="padding:20px 10px;">
         <div class="media-body" xid="mediaBody1" style="width:100%;">
          <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" bind-value="input_value" placeHolder="请输入公司名称,简介等全部或部分信息" style="width:100%;border-radius:0;"></input></div> 
         <div class="media-right" xid="mediaRight1">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" xid="btn1" icon="img:$UI/shiquanBlock/newImage/Search.png|" onClick="btn_coop_searchClick" style="border-radius:0;width:80px;height:39px;">
           <i xid="i5"></i>
           <img src="$UI/shiquanBlock/newImage/Search.png" xid="image3" height="20px;"></img>
           <span xid="span3"></span></a> </div> </div><div xid="div5" style="padding:10px;">
   <span xid="span5" style="color:red;">请点击灰色条纹查看详情</span></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="enterpriseData" autoLoad="false" limit="10" disablePullToRefresh="true" disableInfiniteLoad="true">
         <ul class="x-list-template" xid="listTemplateUl1">
          <li xid="li1">
           <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("ent_name")' style="padding-left:20px;"></div>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup2" collapsible="true" collapsed="true" title="title" style="height:auto;">
   <div class="x-control-group-title" xid="controlGroupTitle2">
    <span xid="span2" style="height:1px;display:none;" bind-text='val("ent_name")'></span></div> 
   <div xid="div4" style="border-radius:5px;border:1px solid #aaa;box-shadow:3px 3px 0px #aaa;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
     <div class="x-col x-col-10 x-col-center" xid="col13">
      <img src="$UI/shiquanBlock/image/profile_pic-copy-15.png" alt="" xid="image7" height="60px" style="width:60px;"></img></div> 
     <div class="x-col" xid="col16">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
       <div class="x-col" xid="col30">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
         <label class="pull-left x-label" xid="label6" style="width:50px;">名称:</label>
         <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output6" bind-ref='ref("ent_name")'></div></div> </div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
       <div class="x-col" xid="col31">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
         <label class="pull-left x-label" xid="label7" style="width:50px;">地址:</label>
         <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output7" bind-ref='ref("ent_address")'></div></div> </div> </div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14">
     <div class="x-col" xid="col23" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="详情" xid="btn2" style="width:68px;border-radius:0;" onClick="button3Click">
       <i xid="i4"></i>
       <span xid="span6">详情</span></a> </div> 
     <div class="x-col" xid="col24" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="联系人" xid="btn3" onClick="btn_ContractClick" style="width:68px;border-radius:0;">
       <i xid="i6"></i>
       <span xid="span8">联系人</span></a> </div> 
     <div class="x-col" xid="col25" style="text-align:center;"></div>
     <div class="x-col" xid="col29"></div></div> </div> </div></li> 
  </ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div></div> 
     <div class="x-contents-content" xid="buildingContent"></div></div> </div> </div></div>