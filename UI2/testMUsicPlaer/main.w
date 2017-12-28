<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window">  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:201px;top:176px;" onLoad="modelLoad"></div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div class="media" xid="media1" style="height:48px;background-color:rgb(23,145,255);">
   <div class="media-left" xid="mediaLeft1" style="line-height:48px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button17" icon="linear linear-menu" style="font-size:20px;color:#fff;height:48px;">
   <i xid="i17" class="linear linear-menu"></i>
   <span xid="span17"></span></a></div> 
   <div class="media-body" xid="mediaBody1">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-sm btn-group-justified" tabbed="true" xid="buttonGroup3" style="margin-left:15%;height:48px;background-color:rgb(23,145,255);width:70%;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="听" xid="button20" style="font-size:24px;color:#fff;" target="maincontent">
    <i xid="i20"></i>
    <span xid="span20">听</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="看" xid="button21" style="font-size:24px;color:#fff;">
    <i xid="i21"></i>
    <span xid="span21">看</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="唱" xid="button22" style="font-size:24px;color:#fff;">
   <i xid="i22"></i>
   <span xid="span22">唱</span></a></div></div> 
  <div class="media-right" xid="mediaRight1" style="line-height:48px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button19" icon="linear linear-magnifier" style="font-size:20px;color:#fff;">
   <i xid="i19" class="linear linear-magnifier"></i>
   <span xid="span19"></span></a></div></div></div> 
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="maincontent"><div xid="div15" style="padding:0 20px;"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="height:80px;border-bottom:1px solid #ccc;">
   <div class="col col-xs-3" xid="col4"><img src="$UI/testMUsicPlaer/images/defaultHead.png" alt="" xid="image4" height="100%" style="width:60px;border-radius:100%;"></img></div>
   <div class="col col-xs-6" xid="col5"><div xid="div16">
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="height:30px;"></div></div>
  <div xid="div17" style="height:40px;padding-top:10px;width:100%;">
   <div xid="div18" style="float:left;height:20px;width:22%;background-image:url(./images/defaultHead.png);"></div>
   <div xid="div19" style="float:left;line-height:20px;padding-left:10px;width:78%;">
    <span xid="span24">听歌</span>
    <span xid="span25">999999</span>
    <span xid="span26">分钟</span></div> </div></div>
   <div class="col col-xs-3" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button23" icon="linear linear-envelope" style="color:grey;font-size:30px;margin-left:10px;" onClick="button23Click">
   <i xid="i23" class="linear linear-envelope"></i>
   <span xid="span23"></span></a></div></div>
  <table component="$UI/system/components/bootstrap/table/table" xid="table1" class="table tb-menu table1">
   <tbody class="x-list-template" xid="listTemplate2">
    <tr xid="tr1">
     <td pagename="./list.w" xid="td1" style="border:none;">
      <div class="text-center" xid="div211">
       <img src="$UI/testMUsicPlaer/images/index_shoucang.png" alt="" xid="image311" class="img-responsive center-block tb-img5"></img>
       <span xid="span7" style="margin-top:15px;display:block;"><![CDATA[本地音乐]]></span>
  <span xid="span34" style="font-size:16px;margin-top:5px;color:#aaa;"><![CDATA[0]]></span></div> </td> 
     <td pagename="./list.w" xid="td2" style="border:none;">
      <div class="text-center" xid="div311">
       <img src="$UI/testMUsicPlaer/images/app_yingyong.png" alt="" xid="image8" class="img-responsive center-block tb-img5"></img>
  <span xid="span35" style="margin-top:15px;display:block;"><![CDATA[喜欢·歌单]]></span>
  <span xid="span36" style="font-size:16px;margin-top:5px;color:#aaa;">0</span></div> </td> 
     <td pagename="./list.w" xid="td3" style="border:none;">
      <div class="text-center" xid="div411">
       <img src="$UI/testMUsicPlaer/images/app_devide.png" alt="" xid="image9" class="img-responsive center-block tb-img5"></img>
  <span xid="span37" style="margin-top:15px;display:block;"><![CDATA[下载]]></span>
  <span xid="span41" style="font-size:16px;margin-top:5px;color:#aaa;">0</span></div> </td> 
     <td pagename="./list.w" xid="td4" style="border:none;">
      <div class="text-center" xid="div71">
       <img src="$UI/testMUsicPlaer/images/index_schedule.png" alt="" xid="image10" class="img-responsive center-block tb-img5"></img>
  <span xid="span39" style="margin-top:15px;display:block;"><![CDATA[最近]]></span>
  <span xid="span40" style="font-size:16px;margin-top:5px;color:#aaa;">0</span></div> </td> 
     </tr> 
    </tbody> </table>
  </div>
  <div xid="div2" style="height:11px;background-color:#ccc;"></div>
  <div xid="div11" style="padding:20px 0;"><table component="$UI/system/components/bootstrap/table/table" xid="table2" class="table tb-menu table2">
   <tbody class="x-list-template" xid="listTemplate1">
    <tr xid="tr2">
     <td pagename="./list.w" xid="td5" style="border:none;">
      <div class="text-center" xid="div5">
       <img alt="" xid="image5" class="img-responsive center-block tb-img5" src="$UI/testMUsicPlaer/images/index_bianqian.png"></img>
       <span xid="span1" style="margin-top:15px;display:block;"><![CDATA[乐库]]></span>
       </div> </td> 
     <td pagename="./list.w" xid="td7" style="border:none;">
      <div class="text-center" xid="div3">
       <img src="$UI/testMUsicPlaer/images/index_file.png" alt="" xid="image2" class="img-responsive center-block tb-img5"></img>
       <span xid="span6" style="margin-top:15px;display:block;"><![CDATA[歌单]]></span>
       </div> </td> 
     <td pagename="./list.w" xid="td6" style="border:none;">
      <div class="text-center" xid="div4">
       <img src="$UI/testMUsicPlaer/images/index_gonggao.png" alt="" xid="image1" class="img-responsive center-block tb-img5"></img>
       <span xid="span8" style="margin-top:15px;display:block;"><![CDATA[电台·酷群]]></span>
       </div> </td> 
     
  </tr> <tr xid="tr3">
   <td pagename="./list.w" xid="td9" style="border:none;">
    <div class="text-center" xid="div8">
     <img src="$UI/testMUsicPlaer/images/index_innerContact.png" alt="" xid="image6" class="img-responsive center-block tb-img5"></img>
     <span xid="span18" style="margin-top:15px;display:block;"><![CDATA[猜你喜欢]]></span>
     </div> </td> 
   <td pagename="./list.w" xid="td10" style="border:none;">
    <div class="text-center" xid="div10">
     <img src="$UI/testMUsicPlaer/images/index_netge.png" alt="" xid="image12" class="img-responsive center-block tb-img5"></img>
     <span xid="span14" style="margin-top:15px;display:block;"><![CDATA[每日推荐]]></span>
     </div> </td> 
   <td pagename="./list.w" xid="td11" style="border:none;">
    <div class="text-center" xid="div9">
     <img src="$UI/testMUsicPlaer/images/index_file.png" alt="" xid="image11" class="img-responsive center-block tb-img5"></img>
     <span xid="span15" style="margin-top:15px;display:block;"><![CDATA[听歌识曲]]></span>
     </div> </td> 
   </tr></tbody> </table></div></div>
  </div></div>
  </div></div>