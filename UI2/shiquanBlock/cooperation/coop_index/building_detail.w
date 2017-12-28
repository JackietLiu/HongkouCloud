<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" onLoad="modelLoad" style="top:89px;left:653px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="buildData" idColumn="ID" confirmRefresh="false">
   <column label="b_address" name="b_address" type="String" xid="xid1"></column>
  <column label="content" name="content" type="String" xid="xid2"></column>
  <column label="ID" name="ID" type="String" xid="xid4"></column>
  <column name="building_name" type="String" xid="xid3"></column>
  <column label="area" name="area" type="String" xid="xid5"></column>
  <column label="build_type_Text" name="build_type_Text" type="String" xid="xid6"></column>
  <column label="use_type_Text" name="use_type_Text" type="String" xid="xid7"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="58"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="房屋详情" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
   <i class="icon-chevron-left" xid="i1"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1">房屋详情</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label9" style="width:90px;font-weight:bold;"><![CDATA[名称]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='$model.buildData.ref("building_name")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label10" style="width:90px;font-weight:bold;"><![CDATA[地址]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='$model.buildData.ref("b_address")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label8" style="width:90px;font-weight:bold;"><![CDATA[物业性质]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.buildData.ref("build_type_Text")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:90px;font-weight:bold;"><![CDATA[使用性质]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='$model.buildData.ref("use_type_Text")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label11" style="width:90px;font-weight:bold;"><![CDATA[面积]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref='$model.buildData.ref("area")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label7" style="width:90px;font-weight:bold;">简介</label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='$model.buildData.ref("content")' style="width:971px;"></div></div>
  
  
  </div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>