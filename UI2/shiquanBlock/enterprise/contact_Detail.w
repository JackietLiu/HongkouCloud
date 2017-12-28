<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="contactdata" idColumn="ID" confirmRefresh="false">
   <column label="ID" name="ID" type="String" xid="xid2"></column>
  <column label="license_no" name="contact_name" type="String" xid="xid14"></column>
  <column label="allin1_no" name="contact_title" type="String" xid="xid15"></column>
  <column label="contact_tel" name="contact_tel" type="String" xid="xid16"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" height="58">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="联系人详情" style="background-color:#007afe;height:58;">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button1">
       <i class="icon-chevron-left" xid="i1"></i>
       <span xid="span1"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">联系人详情</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content2">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="padding:10px;">
     <label class="x-label" xid="label9" style="width:90px;font-weight:bold;"><![CDATA[联系人姓名]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='$model.contactdata.ref("contact_name")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5" style="padding:10px;">
     <label class="x-label" xid="label10" style="width:90px;font-weight:bold;"><![CDATA[职务]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='$model.contactdata.ref("contact_title")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="padding:10px;">
     <label class="x-label" xid="label8" style="width:90px;font-weight:bold;"><![CDATA[电话]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.contactdata.ref("contact_tel")' style="width:971px;"></div></div> 
    
    
    
    
    
    
    
    
    
    
    </div> 
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>