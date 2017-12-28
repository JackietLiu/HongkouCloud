<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:209px;left:190px;height:auto;" onLoad="modelLoad" onModelConstructDone="modelModelConstructDone" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="collectData" queryAction="queryCollection" saveAction="saveCollection" url="/hongkou/hongkou" tableName="collection" idColumn="id" orderBy="createtime:desc" confirmDelete="false" confirmRefresh="false"><column label="id" name="id" type="String" xid="default6"></column>
  <column label="标题" name="title" type="String" xid="default7"></column>
  <column label="内容" name="content" type="String" xid="default8"></column>
  <column label="收藏时间" name="createtime" type="Date" xid="default9"></column>
  <column label="来自于" name="comefrom" type="String" xid="default10"></column>
  <column label="收藏人id" name="collectid" type="String" xid="xid1"></column>
  <column label="图片地址" name="image" type="String" xid="xid2"></column>
  <column label="contentid" name="contentid" type="String" xid="xid3"></column>
  <column label="是否選中" name="checked" type="Integer" xid="xid6"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="background-color:#37b9ed;" title="我的收藏">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="linear linear-arrowleft"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="linear linear-arrowleft"/>  
              <span></span> 
            </a> 
          <a component="$UI/system/components/justep/button/button" label="取消" class="btn btn-link hide" onClick="cancelBtnClick" xid="cancelBtn">
   <i xid="i5"></i>
   <span xid="span8">取消</span></a></div>  
          <div class="x-titlebar-title" style="font-weight:normal;">我的收藏</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="linear linear-pencil" onClick="editBtnClick" xid="editBtn">
   <i class="linear linear-pencil" xid="i4"></i>
   <span xid="span7"></span></a>
  <a component="$UI/system/components/justep/button/button" label="删除" class="hide btn btn-link" onClick="delBtnClick" xid="delBtn">
   <i xid="i2"></i>
   <span xid="span5">删除</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7CD58613B000001F1D010E013601B2E" style="background-color:#f1eff6;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" noMoreLoadLabel="没有更多收藏了">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list " xid="list1" data="collectData" limit="10">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox check" xid="checkbox1" checkedValue="1" bind-ref='ref("checked")' uncheckedValue="0" checked="false"></span><div name="divs" xid="div5" style="border-radius:6px;background-color:#fff;" class="collectlist" bind-click="li1Click" bind-disable=' '><div xid="div27" style="font-size:16px;padding:20px 10px;">
   <span xid="span24" bind-text='ref("title")'></span>
   </div><div xid="div24" style="font-size:12px;padding:0px 10px;color:#aaa;">
   <span xid="span25"><![CDATA[来自于：]]></span>
   <span xid="span28" bind-text='ref("comefrom")'></span>
  <span xid="span3" bind-text='val("createtime")' class="pull-right"></span><span xid="span4" class="pull-right">创建于：</span>
  </div>
  <div xid="div4" style="font-size:12px;padding:5px 10px;color:#aaa;"></div></div>
  
  </li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>