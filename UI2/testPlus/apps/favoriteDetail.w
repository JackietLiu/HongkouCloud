<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div xid="top1" class="x-panel-top "> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="详情"
          class="x-titlebar" style="background-color:#37b9ed;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i1" class="linear linear-arrowleft"></i>
   <span xid="span1"></span></a></div>  
          <div class="x-titlebar-title">详情</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="取消收藏" xid="delCollect" style="font-size:14px;">
   <i xid="i2"></i>
   <span xid="span2">取消收藏</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7CDB26EE8A00001DCF81EDC14FDC260" style="bottom: 0px; background-size: cover; background-image: url(http://localhost:41333/x5/UI2/v_/testPlus/apps/none);">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onScrollMove="scrollView1ScrollMove">
   <div class="x-scroll-content" xid="div2">
    
    <div xid="div9" style="padding:0 10px;background-color:#37b9ed;width:100%;">
   <div xid="div8">
    <span xid="span15" style="font-size:22px;padding-left:10px;color:#fff;"></span></div> </div>
  <div xid="div6" style="padding:10px 0 0px 20px;color:#fff;background-color:#37b9ed;">
   <label xid="label1">来自于：</label>
   <span xid="span14"></span></div>
  <div xid="div7" class="text-black lead" style="padding:15px 20px;" align="left"></div>
  <div xid="div1" style="padding:10px;color:#aaa;">
   <span xid="span5">收藏于</span>
   <span xid="span6"></span></div></div> </div></div>
  </div> 
</div>