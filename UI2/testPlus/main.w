<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xmlns:xui="http://www.justep.com/xui">  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:201px;top:176px;" onLoad="modelLoad" onModelConstructDone="modelModelConstruct" onunLoad="modelUnLoad" onActive="modelActive"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="personData" idColumn="ID" onCustomRefresh="personDataCustomRefresh">
   <column label="ID" name="ID" type="String" xid="column17"></column>
  <column name="image" type="String" xid="column18"></column>
  <column name="intro" type="String" xid="column10"></column>
  <column name="Party_Title" type="String" xid="xid4"></column>
  <column name="Tel_Office1" type="String" xid="column11"></column>
  <column name="Mobie_No" type="String" xid="column13"></column>
  <column name="Email_User" type="String" xid="column14"></column>
  <column name="totalMsg" type="Integer" xid="column15"></column>
  <column name="Email_Pass" type="String" xid="xid13"></column>
  <column name="UserName_Real" type="String" xid="column12"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh">
   <column label="id" name="id" type="String" xid="xid1"></column>
   <column label="图片" name="fileContent" type="String" xid="xid2"></column>
   <column label="链接地址" name="url" type="String" xid="xid9"></column>
   <column label="标题" name="title" type="String" xid="xid3"></column>
   <master xid="default1"></master></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryUsers2" url="/hongkou/hongkou" tableName="t_s_base_user" idColumn="id"><column label="ID" name="id" type="String" xid="default2"></column>
  <column label="同步流程" name="activitisync" type="Integer" xid="default3"></column>
  <column label="浏览器" name="browser" type="String" xid="default4"></column>
  <column label="密码" name="password" type="String" xid="default5"></column>
  <column label="真实名字" name="realname" type="String" xid="default6"></column>
  <column label="签名" name="signature" type="String" xid="default7"></column>
  <column label="有效状态" name="status" type="Integer" xid="default8"></column>
  <column label="用户KEY" name="userkey" type="String" xid="default9"></column>
  <column label="用户账号" name="username" type="String" xid="default10"></column>
  <column label="部门ID" name="departid" type="String" xid="default11"></column>
  <column label="删除状态" name="delete_flag" type="Integer" xid="default12"></column>
  <column label="邮箱" name="Email" type="String" xid="default13"></column>
  <column label="memo" name="memo" type="String" xid="default14"></column>
  <column label="姓名" name="usernamereal" type="String" xid="default15"></column>
  <column label="性别" name="Sex" type="Integer" xid="default16"></column>
  <column label="idType" name="idtype" type="String" xid="default17"></column>
  <column label="idNo" name="idno" type="String" xid="default18"></column>
  <column label="birthday" name="birthday" type="String" xid="default19"></column>
  <column label="头衔" name="persontype" type="String" xid="default20"></column>
  <column label="politic" name="politic" type="String" xid="default21"></column>
  <column label="mobileNo" name="mobileno" type="String" xid="default22"></column>
  <column label="partyTitle" name="partytitle" type="String" xid="default23"></column>
  <column label="titleLevel" name="titlelevel" type="String" xid="default24"></column>
  <column label="rightLevel" name="rightlevel" type="String" xid="default25"></column>
  <column label="办公室电话1" name="teloffice1" type="String" xid="default26"></column>
  <column label="办公室电话2" name="teloffice2" type="String" xid="default27"></column>
  <column label="传真" name="faxno" type="String" xid="default28"></column>
  <column label="faxNet" name="faxnet" type="String" xid="default29"></column>
  <column label="faxVirtul" name="faxvirtul" type="String" xid="default30"></column>
  <column label="deptCode1" name="deptcode1" type="String" xid="default31"></column>
  <column label="deptCode2" name="deptcode2" type="String" xid="default32"></column>
  <column label="deptcode" name="deptcode" type="String" xid="default33"></column>
  <column label="deptname" name="deptname" type="String" xid="default34"></column>
  <column label="titlesname" name="titlesname" type="String" xid="default35"></column>
  <column label="jobname" name="jobname" type="String" xid="default36"></column>
  <column label="sortIndex" name="sortindex" type="String" xid="default37"></column>
  <column label="邮箱用户" name="emailuser" type="String" xid="default38"></column>
  <column label="邮箱密码" name="emailpass" type="String" xid="default39"></column>
  <column label="头衔" name="headerimg" type="String" xid="default40"></column>
  <column label="默认空间" name="totalsize" type="Double" xid="default41"></column>
  <column label="手势密码" name="locker" type="String" xid="default42"></column></div></div>
  
  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1" display="push">
   <div class="x-wing-left" xid="left2" style="color:#fff;" bind-load="left2Load">
    <div xid="div32" align="center" bind-click="div32Click">
     <a xid="imgsrc"><img src="" alt="" xid="image7" class="img-responsive center-block" style="height:80px;border-radius:100%;margin-top:30px;width:80px;" bind-attr-src=' $model.userData.val("headerimg")'></img></a>
     <span xid="span7" style="font-size:large;" bind-text='$model.userData.ref("realname")'>姓名</span></div> 
    <div xid="div34" style="background-color:#2bace1;margin-top:20px;font-size:16px;">
     <div xid="div31" style="padding-top:10px;height:60px;border-bottom:3px solid #37baed;background:#2b5bf4;padding-left:20px;background-color:transparent;">
      <div class="media" xid="media1">
       <div class="media-left" xid="mediaLeft1">
        <a href="#" xid="a1">
         <img alt="" xid="image8" src="./images/index_images/4.png" height="40px"></img></a> </div> 
       <div class="media-body" xid="mediaBody1">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6" style="padding-left:10px;">
         <label class="x-label" xid="label6" style="width:60px;">职位：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.userData.ref("persontype")' style="color:#fff;"></div></div> </div> </div> </div> 
     <div xid="div291" style="height:60px;border-bottom:3px solid #37baed;padding-left:20px;">
      <div class="media" xid="media2" style="padding-top:10px;">
       <div class="media-left" xid="mediaLeft2">
        <a href="#" xid="a1">
         <img alt="" xid="image5" src="./images/index_images/3.png" height="40px"></img></a> </div> 
       <div class="media-body" xid="mediaBody2">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7" style="padding-left:10px;">
         <label class="x-label" xid="label7" style="width:60px;">电话：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='$model.userData.ref("teloffice2")' style="color:#fff;"></div></div> </div> </div> </div> 
     <div xid="div292" style="height:60px;border-bottom:3px solid #37baed;padding-left:20px;">
      <div class="media" xid="media3">
       <div class="media-left" xid="mediaLeft3" style="padding-top:10px;">
        <a href="#" xid="a3">
         <img alt="" xid="image6" src="./images/index_images/2.png" height="40px"></img></a> </div> 
       <div class="media-body" xid="mediaBody3" style="padding-top:10px;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10" style="padding-left:10px;">
         <label class="x-label" xid="label10" style="width:60px;">手机：</label>
         <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output11" bind-ref='$model.userData.ref("mobileno")' style="color:#fff;"></div></div> </div> </div> </div> 
     <div xid="div293" style="height:60px;border-bottom:3px solid #37baed;padding-left:20px;">
      <div class="media" xid="media4">
       <div class="media-left" xid="mediaLeft4" style="padding-top:10px;">
        <img src="./images/index_images/1.png" alt="" xid="image5" height="40px"></img></div> 
       <div class="media-body" xid="mediaBody4" style="padding-top:10px;">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="padding-left:10px;">
   <label class="x-label" xid="label1" style="width:60px;">邮箱：</label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" style="color:#fff;" bind-text=" "></div></div></div> </div> </div> </div> 
    <div xid="div30" align="right" style="margin-top:50px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="注销" xid="button1" style="color:#fff;" onClick="button1Click">
      <i xid="i7"></i>
      <span xid="span8">注销</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="退出" xid="button2" style="color:#fff;" onClick="button2Click">
      <i xid="i7"></i>
      <span xid="span9">退出</span></a> </div> </div> 
   <div class="x-wing-content" xid="content3">
    <div class="x-wing-backdrop" xid="div27"></div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div xid="top2" height="48" class="x-panel-top" visible="true"><div component="$UI/system/components/justep/titleBar/titleBar" title="首页" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="settingBtn" icon="glyphicon glyphicon-menu-hamburger" onClick='{"operation":"wing1.toggleLeft"}'>
     <i xid="i1" class="glyphicon glyphicon-menu-hamburger"></i>
     <span xid="span1"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1"><![CDATA[首页]]></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2" swipe="false" slidable="true" wrap="false" routable="false">
     <div class="x-contents-content" xid="index" onActive="indexActive">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
       <div class="x-panel-content" xid="content2" _xid="C700FEB06DB0000124D1CDB09C9D1FAC" style="bottom: 0px; background-size: cover;">
        <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel" xid="carousel1" auto="true" interval="10">
         <ol class="carousel-indicators ol1" xid="ol1"></ol>
         <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg" routable="false">
          <div class="x-contents-content" xid="content6">
           <div xid="div28" class="title" align="center">
            <span xid="span28" style="font-size:15px;" class="intro"></span></div> 
           <div xid="div14" align="center">
            <a href="#" xid="a5">
             <img alt="" xid="image13" class="tb-img1" align="left" height="100%" bind-click="openPageClick"></img></a> </div> </div> </div> 
  </div> 
        <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
         <div xid="body1" class="panel-body">
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
           <div class="x-col" xid="col5">
            <div xid="div1" class="text-center" bind-click="div1Click" style="margin-bottom:10px;height:80px;">
             <img src="./images/index_images/index_news.png" alt="" xid="image23" class="sharow img-responsive center-block tb-img5" style="width:60px;" height="60px"></img>
             <span xid="span13"><![CDATA[虹口新闻]]></span></div> </div> 
           <div class="x-col" xid="col6">
            <div xid="div7" class="text-center" bind-click="div7Click">
             <img src="./images/index_images/index_gonggao.png" alt="" xid="image9" class="sharow img-responsive center-block tb-img5" style="width:60px;" height="60px"></img>
             <span xid="span10">公示公告</span></div> </div> 
           <div class="x-col" xid="col7">
            <div xid="div35" class="text-center" bind-click="div35Click">
             <img src="./images/index_images/index_file.png" alt="" xid="image10" class="sharow img-responsive center-block tb-img5" style="width:60px;" height="60px"></img>
             <span xid="span12">政策文件</span></div> </div> 
           <div class="x-col" xid="col8">
            <div xid="div36" class="text-center" bind-click="div36Click">
             <img src="./images/index_images/index_special.png" alt="" xid="image11" class="sharow img-responsive center-block tb-img5" style="width:60px;" height="60px"></img>
             <span xid="span14">专题工作</span></div> </div> </div> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
           <div class="x-col" xid="col13">
            <div xid="div40" class="text-center" bind-click="div40Click">
             <img src="./images/index_images/index_netge.png" alt="" xid="image14" class="sharow img-responsive center-block tb-img5" style="width:60px;" height="60px"></img>
             <span xid="span18">网格统计</span></div> </div> 
           <div class="x-col" xid="col14">
            <div xid="div37" class="text-center" bind-click="div37Click">
             <img src="./images/index_images/index_netPath.png" alt="" xid="image12" class="sharow img-responsive center-block tb-img5" style="width:60px;"></img>
             <span xid="span17">移动网盘</span></div> </div> 
           <div class="x-col" xid="col15"></div>
           <div class="x-col" xid="col16"></div></div> </div> 
         <div xid="footer1" class="footer"></div>
         <div xid="div8" class="footer"></div>
         <div xid="div25" style="width:100%;box-shadow: 0px 0px 15px #888888;height:auto;">
          
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col22" style="border-right:1px solid #e5e5e5;padding:10px 10px;"><div xid="div16" class="media" bind-click="myNoticeClick">
    <div xid="div15" class="media-left">
     <img xid="image27" src="./images/index_images/index_notice.png" style="width:55px;"></img></div> 
    <div xid="myNotice" class="media-body">
     <div xid="div13">
      <span xid="span29" style="color:#28b1e2;" class="botmeun">我的通知</span></div> 
     <span xid="span27" style="color:#a7a7a7;font-size:xx-small;">通知类消息</span></div> </div></div>
   <div class="x-col" xid="col34" style="padding:10px 10px;" bind-click="div9Click"><div xid="div3" class="media" bind-click="myScheduleClick">
    <div xid="div4" class="media-left">
     <img xid="image24" src="./images/index_images/index_schedule.png" style="width:55px;"></img></div> 
    <div xid="mySchedule" class="media-body">
     <div xid="div6">
      <span xid="span15" style="color:#28b1e2;" class="botmeun">我的日程</span></div> 
     <span xid="span16" style="color:#a7a7a7;font-size:xx-small;">记录下您的行程</span></div> </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="border-top:1px solid #e5e5e5;">
   <div class="x-col" xid="col25" style="border-right:1px solid #e5e5e5;padding:10px 10px;"><div xid="div20" class="media" bind-click="div20Click">
    <div xid="div19" class="media-left">
     <img xid="image28" src="./images/index_images/index_shoucang.png" style="width:55px;"></img></div> 
    <div xid="div18" class="media-body">
     <div xid="div17">
      <span xid="span31" style="color:#35bb99;" class="botmeun">我的收藏</span></div> 
     <span xid="span30" style="color:#a7a7a7;font-size:xx-small;">收藏类文件</span></div> </div></div>
   <div class="x-col" xid="col35" style="padding:10px 10px;"><div xid="div24" class="media" bind-click="div24Click">
    <div xid="div23" class="media-left">
     <img xid="image29" src="./images/index_images/index_myEmail.png" style="width:55px;"></img></div> 
    <div xid="div22" class="media-body">
     <div xid="div21">
      <span xid="span33" style="color:#fe5b69;" class="botmeun">我的邮件</span></div> 
     <span xid="span32" style="color:#a7a7a7;font-size:xx-small;">这里有您的邮件</span></div> </div></div></div>
  </div> </div> </div> </div> </div> 
     <div class="x-contents-content" xid="apps" onActive="appsbtnClick">
      <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="./apps.w"></div></div> 
     <div class="x-contents-content" xid="mine" onActive="minebtnClick">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
   <div class="x-panel-content" xid="content4">
    <div xid="div39">
     <div xid="div45" align="center">
      <div xid="div50" style="padding-top:15px;">
       <img alt="" xid="showImage" style="border-radius:5px;width:70px;" bind-click="showImageClick" height="70px" bind-attr-src=' $model.userData.val("headerimg")'></img>
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-only-icon" label="button" xid="photoBtn" onClick="{operation:'chooseOver.show'}" icon="icon-android-camera" style="color:#000;height:60px;width:60px;">
        <i xid="i6" class="icon-android-camera"></i>
        <span xid="span22"></span></a> </div> 
      <div xid="div51">
       <span xid="namespan" style="font-size:large;" bind-text='$model.userData.ref("realname")'>姓名</span></div> </div> </div> 
    <div xid="div2"></div>
    <div xid="div5" style="background-color:#fff;">
     <div xid="div33">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-bottom:1px solid #e5e5e5;">
       <div class="x-col" xid="col3">
        <div class="media" xid="media8">
         <div class="media-left" xid="mediaLeft8" style="padding-top:6px;">
          <img alt="" xid="image1" height="30px" src="./images/index_images/11.png"></img></div> 
         <div class="media-body" xid="mediaBody8">
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
           <label class="x-label" xid="label2" style="width:60px;">职位：</label>
           <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-ref='$model.userData.ref("persontype")'></div></div> </div> </div> </div> </div> </div> 
     <div xid="div29">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-bottom:1px solid #e5e5e5;">
       <div class="x-col" xid="col9">
        <div class="media" xid="media6">
         <div class="media-left" xid="mediaLeft7" style="padding-top:6px;">
          <img alt="" xid="image1" height="30px" src="./images/index_images/44.png"></img></div> 
         <div class="media-body" xid="mediaBody5">
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
           <label class="x-label" xid="label3" style="width:60px;">电话：</label>
           <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='$model.userData.ref("teloffice2")'></div></div> </div> </div> </div> </div> </div> 
     <div xid="div5">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="border-bottom:1px solid #e5e5e5;">
       <div class="x-col" xid="col1">
        <div class="media" xid="media7">
         <div class="media-left" xid="mediaLeft6" style="padding-top:6px;">
          <img alt="" xid="image2" height="30px" src="./images/index_images/33.png"></img></div> 
         <div class="media-body" xid="mediaBody6">
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
           <label class="x-label" xid="label4" style="width:60px;">手机：</label>
           <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output4" bind-ref='$model.userData.ref("mobileno")'></div></div> </div> </div> </div> </div> </div> 
     <div xid="div12" style="border-bottom:1px solid #e5e5e5;padding:10px;">
      <div class="media" xid="media5">
       <div class="media-left" xid="mediaLeft5" style="padding-top:3px;">
        <img alt="" xid="image3" height="30px" src="./images/index_images/22.png"></img></div> 
       <div class="media-body" xid="mediaBody7">
        <label xid="label5" style="font-weight:normal;">邮箱：</label>
        <span xid="span21" style="margin-left:12px;"></span>
        <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="bindEmail" style="border:0;margin-left:20px;border-radius:0;line-height:15px;height:30px;width:130px;background-color:#37b9ed;" onClick="subMitBtnClick">
         <i xid="i8"></i>
         <span xid="span22">显示</span></a> </div> </div> </div> 
     <div xid="div2" style="border-bottom:1px solid #e5e5e5;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
       <div class="x-col" xid="col4" style="line-height:25px;">
        <div class="media" xid="media5" bind-click="media5Click">
         <div class="media-left" xid="mediaLeft5">
          <div xid="div11" style="width:30px;" align="center">
           <img alt="" xid="image3" src="./images/index_images/ewm.png" style="width:25px;"></img></div> </div> 
         <div class="media-body" xid="mediaBody5">
          <div xid="div9" style="line-height:20px;">
           <span xid="span19">把软件推荐给朋友</span></div> </div> </div> </div> </div> </div> 
     <div xid="div38" style="border-bottom:1px solid #e5e5e5;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
       <div class="x-col" xid="col4" style="line-height:20px;">
        <div class="media" xid="media6" bind-click="btnSetPasswordClick">
         <div class="media-left" xid="mediaLeft6">
          <img alt="" xid="image4" height="30px" src="./images/index_images/55.png"></img></div> 
         <div class="media-body" xid="mediaBody6">
          <div xid="div10" style="line-height:20px;">
           <span xid="span6">添加/重置手势密码</span></div> </div> </div> </div> </div> </div> 
     <div xid="div63" style="border-bottom:1px solid #e5e5e5;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="border-bottom:1px solid #e5e5e5;line-height:50px;height:50px;">
    <div class="x-col" xid="col19" style="line-height:20px;">
     <div class="media" xid="media9" bind-click="media9Click">
      <div class="media-left" xid="mediaLeft9">
       <img alt="" xid="image16" height="30px" src="./images/img/checkver.png"></img></div> 
      <div class="media-body" xid="mediaBody9">
       <div xid="div62" style="line-height:20px;">
        <span xid="span40"><![CDATA[检查版本更新]]></span>
  
  <span xid="span41" style="color:#aaa;"><![CDATA[（当前版本号：Version]]></span><span xid="version" style="color:#aaa;"><![CDATA[]]></span>
  <span xid="span43" style="color:#aaa;"><![CDATA[）]]></span></div> </div> </div> </div> </div> </div><div xid="div26">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
       <div class="x-col" xid="col11" style="padding:10 30px;text-align:center;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-block" label="注销" xid="button3" style="color:#fff;border-radius:0px;background-color:#37b9ed;" onClick="button3Click">
         <i xid="i10"></i>
         <span xid="span11">注销</span></a> </div> 
       <div class="x-col" xid="col2" style="padding:10 30px;text-align:center;">
        <a component="$UI/system/components/justep/button/button" class="btn btn-block" label="退出" xid="button6" style="color:#fff;border-radius:0px;background-color:#37b9ed;" onClick="button6Click">
         <i xid="i11"></i>
         <span xid="span20">退出</span></a> </div> </div> </div> 
  </div> </div> </div></div> 
  </div> </div> 
   <div class="x-panel-bottom" xid="bottom1">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="indexbtn">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" xid="indexbtn" label="首页" icon="dataControl dataControl-home" target="index" onClick="indexbtnClick">
      <i xid="i2" class="dataControl dataControl-home"></i>
      <span xid="span2">首页</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="应用" xid="appsbtn" icon="linear linear-chartbars" target="apps" onClick="appsbtnClick">
      <i xid="i3" class="linear linear-chartbars"></i>
      <span xid="span3">应用</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="交流" xid="chatbtn" icon="dataControl dataControl-commentfulll" onClick="chatbtnClick">
      <i xid="i4" class="dataControl dataControl-commentfulll"></i>
      <span xid="span4">交流</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="我的" xid="minebtn" icon="linear linear-cog" target="mine" onClick="minebtnClick">
      <i xid="i5" class="linear linear-cog"></i>
      <span xid="span5">我的</span></a> </div> </div> </div></div> 
  </div><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="lockerDialog" style="top:163px;left:37px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="webContentDialog" style="top:120px;left:29px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="exitDialog" title="提示" message="确定要退出吗？" onOK="exitDialogOK" type="OKCancel" style="top:12px;left:44px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="logoutDialog" type="OKCancel" title="提示" message="确定要注销当前用户吗？" onOK="logoutDialogOK" style="top:14px;left:52px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="turnDialog" type="OKCancel" onOK="turnDialogOK" style="top:85px;left:4px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" forceRefreshOnOpen="true" src="$UI/chat/wex5/index.w" xid="registerDialog" xui:parent="window" xui:update-mode="insert" style="top:37px;left:54px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="chatWindow" src="$UI/chat/wex5/index.w" style="top:50px;left:41px;"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="ewmOver" dismissible="false" style="top:70px;left:19px;">
   <div class="x-popOver-overlay" xid="div47"></div>
   <div class="x-popOver-content" xid="div48" style="background-color:#f3fbff;height:450px;">
    <div xid="div46" style="padding-left:30px;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
      <div class="x-col" xid="col21"></div>
      <div class="x-col x-col-10" xid="col20">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button4" icon="icon-android-close" onClick="{operation:'ewmOver.hide'}" style="margin-left:-10px;">
        <i xid="i12" class="icon-android-close"></i>
        <span xid="span25"></span></a> </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
      <div class="x-col" xid="col18" style="padding:10px 0;">
       <span xid="span26" style="color:#6085c4;font-size:25px;font-weight:bold;">二维码分享</span></div> </div> </div> 
    <div xid="div52" align="center" style="padding:0 20px;">
     <img src="http://116.236.228.21:8859/hongkou/shhk116.png" alt="" xid="image15" style="box-shadow:0px 0px 5px #000;"></img></div> 
    <div xid="div49" align="center" style="margin-top:10px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label="分享" xid="button7" onClick="button7Click" icon="e-commerce e-commerce-fenxiang" style="font-size:18px;">
      <i xid="i9" class="e-commerce e-commerce-fenxiang"></i>
      <span xid="span35">分享</span></a> </div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" type="OK" style="top:113px;left:23px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="falseDialog" onOK="falseDialogOK" style="top:131px;left:62px;"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver1" dismissible="false" style="top:78px;left:21px;">
   <div class="x-popOver-overlay" xid="div54"></div>
   <div class="x-popOver-content" xid="div43" style="background-color:#f3fbff;height:450px;">
    <div xid="div41" style="padding-left:30px;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
      <div class="x-col" xid="col10"></div>
      <div class="x-col x-col-10" xid="col12">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button5" icon="icon-android-close" onClick="{operation:'popOver1.hide'}" style="margin-left:-10px;">
        <i xid="i14" class="icon-android-close"></i>
        <span xid="span23"></span></a> </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
      <div class="x-col" xid="col17" style="padding:10px 0;">
       <span xid="span24" style="color:#6085c4;font-size:25px;font-weight:bold;"><![CDATA[邮箱绑定]]></span></div> </div> </div> 
    <div xid="div41">
     <div xid="div55" style="float:left;width:40%;font-size:16px;color:#padding-left:40px;">
      <span xid="span25" style="padding-left:40px;color:#6085c4;font-size:16px;font-weight:bold;">邮箱账号</span></div> 
     <div xid="div43" style="padding-left:20px;line-height:50px;height:50px;">
      <div xid="div42" style="float:left;width:100%;">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="border-radius:0;border:1px solid #c1d3f2;float:left;height:50px;width:62%;" placeHolder="只需输入邮箱用户名"></input>
       <label xid="label8">@hkq.gov.cn</label></div> </div> </div> 
    <div xid="div46">
     <div xid="div48" style="margin-top:20px;font-size:16px;color:#padding-left:40px;">
      <span xid="span26" style="padding-left:40px;color:#6085c4;font-size:16px;font-weight:bold;">邮箱密码</span></div> 
     <div xid="div44" style="padding:0 20px;line-height:50px;height:50px;">
      <input component="$UI/system/components/justep/input/password" class="form-control" xid="input2" style="border-radius:0;border:1px solid #c1d3f2;float:left;height:50px;" placeHolder="请输入登录邮箱密码"></input></div> </div> 
    <div xid="div49" align="left" style="padding:20px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="sureBtn" style="border-radius:0;border:0;line-height:35px;height:50px;background-color:#9591ff;" onClick="sureBtnClick">
      <i xid="i9"></i>
      <span xid="span24" style="font-size:18px;">确定</span></a> </div> 
    <div xid="div42" style="font-size:16px;padding-left:20px;">
     <span xid="span23" style="color:red;">注：只能绑定&quot;@hkq.gov.cn&quot;的邮箱</span></div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="outBindEmail" type="OKCancel" onOK="outBindEmailOK" style="top:58px;left:79px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="loginDialog" forceRefreshOnOpen="false" routable="false" src="./login1.w" style="top:85px;left:89px;"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="sharePop" position="bottom" style="top:67px;left:21px;">
   <div class="x-popOver-overlay" xid="div53"></div>
   <div class="x-popOver-content" xid="div44" style="padding:20px 0;width:100%;background-color:white;">
    <p style="float:left;margin:12px 0 0 5px; width:20%" xid="p1">分享到：</p>
    <ul xid="share1" class="share_detail">
     <li xid="li1">
      <img alt="" xid="qq" bind-click="qqClick" src="./images/img/qq.png"></img></li> 
     <li xid="li2">
      <img alt="" xid="kongjian" bind-click="kongjianClick" src="./images/img/kongjian.png"></img></li> 
     <li xid="li3">
      <img alt="" xid="pengyouquan" bind-click="pengyouquanClick" src="./images/img/pengyouquan.png" style="width:35px;"></img></li> 
     <li xid="li4">
      <img alt="" xid="weixin" bind-click="weixinClick" src="./images/img/weixin.png" style="width:35px;"></img></li> </ul> </div> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="chooseOver" position="bottom" dismissible="false" style="top:54px;left:91px;">
   <div class="x-popOver-overlay" xid="div60"></div>
   <div class="x-popOver-content" xid="div58" style="padding-top:20px;width:100%;background-color:white;">
    <div xid="div59" style="padding:0 10px;">
     <a component="$UI/system/components/justep/button/button" class="btn  btn-block" label="拍照" xid="button9" onClick="photoBtnClick" style="border-radius:0;color:#fff;background-color:green;">
      <i xid="i15"></i>
      <span xid="span38">拍照</span></a> </div> 
    <div xid="div57" style="padding:0 10px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-block" label="从相册选择" xid="button10" onClick="button5Click" style="color:#fff;border-radius:0;margin-top:10px;background-color:green;">
      <i xid="i16"></i>
      <span xid="span37">从相册选择</span></a> </div> 
    <div xid="div56" align="center" style="padding:10px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="取消" xid="button11" style="border-color:#989898;color:#989898;line-height:20px;border-radius:20px;height:40px;background-color:#fff;" onClick="{operation:'chooseOver.hide'}">
      <i xid="i15"></i>
      <span xid="span36">取消</span></a> </div> </div> </div>
  <resource xid="resource2"></resource>
  </div>