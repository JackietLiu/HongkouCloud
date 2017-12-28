<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:258px;left:431px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="uID"><column label="uID" name="uID" type="String" xid="xid1"></column>
  <column label="phoneNumber" name="phoneNumber" type="String" xid="xid2"></column>
  <column label="PassWord" name="PassWord" type="String" xid="xid3"></column>
  <column label="img" name="img" type="String" xid="xid4"></column>
  <column label="realName" name="realName" type="String" xid="xid5"></column>
  <column label="uName" name="uName" type="String" xid="xid6"></column>
  <column label="age" name="age" type="String" xid="xid7"></column>
  <column label="department" name="department" type="String" xid="xid8"></column>
  <column label="ofiice" name="ofiice" type="String" xid="xid9"></column>
  <column name="col9" type="String" xid="xid10"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1" style="height:100%;width:100%;" wrap="false" swipe="false">
   <div class="x-contents-content x-cards" xid="firstHouse" style="width:100%;height:100%;">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1" height="58" style="background-color:#007afe;">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;" title="石泉社区云">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="leftBtn" icon="img:$UI/shiquanBlock/newImage/wing_left.png|" onClick="leftBtnClick">
   <i xid="i2"></i>
   <img src="$UI/shiquanBlock/newImage/wing_left.png" xid="image6" height="20px" style="width:20px;"></img><span xid="span7"></span></a></div>
   <div class="x-titlebar-title" xid="title1">石泉社区云</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button2" icon="img:$UI/shiquanBlock/newImage/Search.png|">
   <i xid="i3"></i>
   <img src="$UI/shiquanBlock/newImage/Search.png" xid="image7" height="20px"></img><span xid="span8"></span></a></div></div></div><div class="x-panel-content" xid="content2" style="background-color:#fff;">
  <div xid="div3" class="x-scroll-view ">
  
  
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" pullUpMoveLabel="释放加载..." pullDownLabel="下拉刷新..." noMoreLoadLabel="见底了，往上翻翻看吧。">
   <div class="x-content-center x-pull-down container" xid="div12">
    <i class="icon-loop" xid="i4" style="color:#007afe;"></i>
    <span class="x-pull-down-label" xid="span18" style="color:#007afe;">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div13"><div xid="div2" style="line-height:40px;padding-left:5px;margin-top:5px;height:40px;background-color:rgb(241,246,253);" class="box-shadow"><span xid="span5" style="font-size:medium;color:#7c99d6;margin-left:2px;">通知</span></div><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="noticeList" autoLoad="false" bind-click="noticeListClick" limit="-1">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl4" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4">
    <li xid="li4" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li4">
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button3">
   <i xid="i5"></i>
   <span xid="span19"></span></a></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div14">
    <span class="x-pull-up-label" xid="span20" style="color:#007afe;" bind-visible="false"></span></div> </div></div>
  
  <div xid="div1" style="position:fixed;bottom:30px;width:100%;"><div xid="div15" style="line-height:40px;padding-left:5px;margin-top:5px;height:40px;background-color:rgb(241,246,253);" class="box-shadow"><span xid="span21" style="font-size:medium;color:#7c99d6;margin-left:2px;"><![CDATA[应用]]></span></div><table class="table tb-menu" component="$UI/system/components/bootstrap/table/table" xid="table1" style="width:100%;border:0;">
   <tbody class="x-list-template" xid="listTemplate2">
    <tr xid="tr1">
     <td pagename="./list.w" xid="td1" style="width:25%;">
      <div class="text-center" xid="div9" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_dangjian.png" alt="" xid="image3" class="img-responsive center-block tb-img5" style="width:70px;"></img>
   <span xid="span12"><![CDATA[党建]]></span></div></td> 
     <td xid="td2" style="width:25%;">
      <div class="text-center" xid="div4" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_dangzheng.png" alt="" xid="image1" class="img-responsive center-block tb-img5" style="width:70px;"></img>
   <span xid="span2"><![CDATA[党政]]></span></div></td> 
     
     <td pagename="./list.w" xid="td3" style="width:25%;"><div class="text-center" xid="div5" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_zizhi.png" alt="" xid="image4" class="img-responsive center-block tb-img5" style="width:70px;"></img>
   <span xid="span3"><![CDATA[自治]]></span></div></td><td pagename="./list.w" xid="td4" style="width:25%;">
      <div class="text-center" xid="div6" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_guanli.png" alt="" xid="image10" class="img-responsive center-block tb-img5" style="width:70px;"></img>
   <span xid="span4"><![CDATA[管理]]></span></div></td> 
     </tr> 
    <tr xid="tr2">
     <td xid="td6" style="border-top:0;width:25%;">
      <div class="text-center" xid="div7" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_fuwu.png" alt="" xid="image11" class="img-responsive center-block tb-img5"></img>
   <span xid="span13"><![CDATA[服务]]></span></div></td> 
     <td pagename="./list.w" xid="td7" style="border-top:0;width:25%;">
      <div class="text-center" xid="div8" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_pingan.png" alt="" xid="image12" class="img-responsive center-block tb-img5"></img>
   <span xid="span15"><![CDATA[平安]]></span></div></td> 
     <td bind-click="openPageClick" pagename="./list.w" xid="td8" style="border-top:0;width:25%;">
      <div class="text-center" xid="div10" bind-click="openPageClick">
   <img src="$UI/shiquanBlock/newImage/index_xiezuo.png" alt="" xid="image13" class="img-responsive center-block tb-img5"></img>
   <span xid="span16"><![CDATA[协作]]></span></div></td> 
     <td xid="td9" style="border-top:0;width:25%;">
      <div class="text-center" xid="div11" bind-click="alertClick">
   <img src="$UI/shiquanBlock/newImage/index_shiye.png" alt="" xid="image14" class="img-responsive center-block tb-img5"></img>
   <span xid="span17"><![CDATA[事业]]></span></div></td> 
     </tr> </tbody> </table>
  </div></div>
   </div>
  
  </div>
  <div class="x-contents-content" xid="workContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1"></div>
  <img src="$UI/shiquanBlock/img/jianse.jpg" alt="" xid="image16" height="100%" style="width:100%;"></img></div>
  <div class="x-contents-content" xid="chatContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="./main_chat.w"></div></div>
  <div class="x-contents-content" xid="mineContent"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top2" height="150">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" style="background-color:#007afe;height:150px;">
     <div class="x-titlebar-title" xid="title2">
      <div xid="div16" style="height:90px;">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
        <div class="x-col" xid="col4"></div>
        <div class="x-col" xid="col5">
         <span xid="span24">我</span></div> 
        <div class="x-col" xid="col6"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
        <div class="x-col" xid="col7"></div>
        <div class="x-col" xid="col8">
         <img src="$UI/shiquanBlock/person/3.png" alt="" xid="image15" height="50px" style="border-radius:100%;width:50px;"></img></div> 
        <div class="x-col" xid="col9"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:20px;">
        <div class="x-col" xid="col10"></div>
        <div class="x-col" xid="col11">
         <span xid="span26" bind-text='userData.val("uName")' style="font-weight:normal;"></span></div> 
        <div class="x-col" xid="col12"></div></div> </div> </div> </div> </div> 
   <div class="x-panel-content" xid="content3" style="top:150px;">
    <div xid="div17" style="border-bottom:1px solid #e5e5e5;line-height:40px;height:40px;">
     <span xid="span25" style="margin-left:40px;font-size:16px;font-weight:bold;">我的资料</span></div> 
    <div xid="div22">
     <div xid="div19">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
       <div class="x-col" xid="col1" style="line-height:20px;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
         <label class="x-label" xid="label6" style="width:60px;">姓名：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='userData.ref("realName")'></div></div> </div> 
       <div class="x-col" xid="col2"></div></div> </div> 
     <div xid="div21">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
       <div class="x-col" xid="col3" style="line-height:20px;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
         <label class="x-label" xid="label1" style="width:60px;">年龄：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='userData.ref("age")'></div></div> </div> 
       <div class="x-col" xid="col13"></div></div> </div> 
     <div xid="div20">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
       <div class="x-col" xid="col14" style="line-height:20px;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
         <label class="x-label" xid="label2" style="width:60px;">部门：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='userData.ref("department")'></div></div> </div> 
       <div class="x-col" xid="col15"></div></div> </div> 
     <div xid="div18">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
       <div class="x-col" xid="col16" style="line-height:20px;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
         <label class="x-label" xid="label3" style="width:60px;">职位：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='userData.ref("office")'></div></div> </div> 
       <div class="x-col" xid="col17"></div></div> </div> </div> 
    <div xid="div23" style="right:0px;background-color:#e5e5e5;height:80px;left:0px;" align="center">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default pull-left" label="注销" xid="logout" style="margin-left:20%;margin-top:20px;" onClick="logoutClick">
    <i xid="i7"></i>
    <span xid="span9">注销</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default pull-right" label="退出" xid="exitAppBtn" style="margin-right:20%;margin-top:20px;" onClick="exitAppBtnClick">
    <i xid="i8"></i>
    <span xid="span14">退出</span></a> </div></div> </div></div></div>
  </div>
   <div class="x-panel-bottom" xid="bottom1" height="48"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" selected="houseBtn"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="首页" xid="houseBtn" target="firstHouse" icon="" style="font-size:11px;">   <i xid="i1"></i>
   <img xid="image2" src="$UI/shiquanBlock/newImage/house.png" height="25px"/><span xid="span1">首页</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" xid="workBtn" target="workContent" icon="" label="信息" style="font-size:11px">
   <i xid="i6"></i>
   <img xid="image5" src="$UI/shiquanBlock/newImage/write.png" height="25px"></img>
   <span xid="span6">信息</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="交流" xid="chatBtn" target="chatContent" icon="" style="font-size:11px">
   <i xid="i18"></i>
   <img xid="image8" src="$UI/shiquanBlock/newImage/message.png" height="25px"></img>
   <span xid="span10">交流</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="我的" xid="mineBtn" target="mineContent" icon="" style="font-size:11px">
   <i xid="i19"></i>
   <img xid="image9" src="$UI/shiquanBlock/newImage/mine.png" height="25px"></img>
   <span xid="span11">我的</span></a></div></div>
  </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="exitDialog" type="OKCancel" title="温馨提示" message="确定退出吗？" onOK="exitDialogOK"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="logoutDialog" type="OKCancel" onOK="logoutDialogOK" title="温馨提示" message="确定要注销当前账号吗？"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="loginDialog"></span></div>