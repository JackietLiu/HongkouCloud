<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:122px;left:660px;height:auto;" onLoad="modelLoad" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="contractdata" idColumn="ID"><column label="lesseeName" name="lesseeName" type="String" xid="xid1"></column>
  <column label="ID" name="ID" type="String" xid="xid2"></column>
  <column label="phoneNumber" name="phoneNumber" type="String" xid="xid3"></column>
  <column label="fromto" name="fromto" type="String" xid="xid4"></column>
  <column label="mouthRent" name="mouthRent" type="String" xid="xid6"></column>
  <column label="rent_pay_Text" name="rent_pay_Text" type="String" xid="xid7"></column>
  <column label="daishou" name="daishou" type="String" xid="xid8"></column>
  <column label="memo" name="memo" type="String" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" height="58"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="合同详情"
          class="x-titlebar" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">合同详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label1" style="width:90px;font-weight:bold;"><![CDATA[承租人姓名]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='$model.contractdata.ref("lesseeName")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label4" style="width:90px;font-weight:bold;"><![CDATA[承租人电话]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='$model.contractdata.ref("phoneNumber")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label5" style="width:90px;font-weight:bold;"><![CDATA[开始日期]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref='$model.contractdata.ref("fromto")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6" style="width:90px;font-weight:bold;"><![CDATA[月租金  ]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output11" bind-ref='$model.contractdata.ref("mouthRent")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" xid="label7" style="width:90px;font-weight:bold;"><![CDATA[付款方式]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output12" bind-ref='$model.contractdata.ref("rent_pay_Text")' style="width:971px;"></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label3" style="width:90px;font-weight:bold;"><![CDATA[代收]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.contractdata.ref("daishou")' style="width:971px;"></div></div>
  
  
  
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label2" style="width:90px;font-weight:bold;"><![CDATA[备注]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='$model.contractdata.ref("memo")' style="width:971px;"></div></div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="Dialog" type="OK" title="温馨提示" message="对不起，该物业还没有签订合同！" onOK="DialogOK"></span></div>