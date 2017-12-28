define(function(require) {
//	var $ = require("jquery");
	var IMWex5Impl = require("$UI/chat/wex5/js/im.wex5.impl");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var IM = require("$UI/chat/base/js/im");
	var utils = require("$UI/system/components/justep/common/utils");
	/*require(['./appVersionChecker']);*/
	var Model = function() {
		this.callParent();
		this.loginDtd = this.getLoadedDeferred();
		this.shellImpl = new ShellImpl(this, {
			contentsXid : "pages",
			wingXid : "wing",
			pageMappings : {
				"main" : {
					url : require.toUrl('./main.w')
				},
				newsDetail : {
					url : require.toUrl('./index_link/newsDetail.w')
				},
				noticeDetail : {
					url : require.toUrl('./index_link/noticeDetail.w')
				},
				login : {
					url : require.toUrl('./login1.w')
				},
				newapps : {
					url : require.toUrl('./apps/apps_newapp.w')

				},
				netPath : {
					url : require.toUrl('./apps/netPath.w')

				},
				newplugins : {
					url : require.toUrl('./apps/apps_newplugins.w')

				},
				appsDownload : {
					url : require.toUrl('./apps/appsDownload.w')

				},
				webContent : {
					url : require.toUrl('./apps/webContent.w')
				},
				appDetail : {
					url : require.toUrl('./apps/apps_appDetail.w')
				},
				dynamic : {
					url : require.toUrl('./index_link/dynamic.w')
				},
				chatIndex : {
					url : require.toUrl('./chat.w')
				},
				dynamicDetail : {
					url : require.toUrl('./index_link/dynamicDetail.w')
				},
				news : {
					url : require.toUrl('./index_link/news.w')
				},
				locker : {
					url : require.toUrl('./locker.w')
				},
				noticeBorder : {
					url : require.toUrl('./index_link/noticeBorder.w')
				},
				imageNews : {
					url : require.toUrl('./index_link/imageNews.w')
				},
				govFile: {
					url : require.toUrl('./index_link/govermentFile.w')
				},
				govFileDetail : {
					url : require.toUrl('./index_link/govermentFileDetail.w')
				},
				myNotice : {
					url : require.toUrl('./out_link/myNotices.w')
				},
				mySchedule : {
					url : require.toUrl('./out_link/mySchedule.w')					
				},
				verif : {
					url : require.toUrl('./messageVerifica/verification.w')
				},
				myEmail : {
					url : require.toUrl('./out_link/myEmail.w')
				},
				headimg : {
					url : require.toUrl('./viewHead.w')
				},
				otherNews : {
					url : require.toUrl('./otherNews.w')
				},
				empty : {
					url : require.toUrl('./emptyPage.w')
				},
				favorite : {
					url : require.toUrl('./apps/favorite.w')
				},
				favoriteDetail : {
					url : require.toUrl('./apps/favoriteDetail.w')
				},
				"chatMain" : {
					url : require.toUrl('../chat/wex5/main.w')
				},
				"chatLogin" : {
					url : require.toUrl('../chat/wex5/login.w')
				},
				"message" : {
					url : require.toUrl('../chat/wex5/message.w')
				},
				"contact" : {
					url : require.toUrl('../chat/wex5/contact.w')
				},
				"personal" : {
					url : require.toUrl('../chat/wex5/personal.w')
				},
				"newfriend" : {
					url : require.toUrl('../chat/wex5/newFriend.w')
				},
				"newgroup" : {
					url : require.toUrl('../chat/wex5/newGroup.w')
				},
				"groupmembers" : {
					url : require.toUrl('../chat/wex5/group.w')
				},
				"addmembers" : {
					url : require.toUrl('../chat/wex5/addMembers.w')
				},
				"editUser" : {
					url : require.toUrl('../chat/wex5/editUser.w')
				},
				"editGroup" : {
					url : require.toUrl('../chat/wex5/editGroup.w')
				},
				"orgTree" : {
					url : require.toUrl('../chat/wex5/orgTree.w')
				},
				"findAllText" : {
					url : require.toUrl('../chat/wex5/findAllText.w')
				},
				/*"workPage" : {
					url : require.toUrl('../chat/pc/workPage.w')
				},*/
				"createDlgByDept" : {
					url : require.toUrl('../chat/wex5/createDlgByDept.w')
				},
				'searchDocument' : {
					url : require.toUrl('../chat/wex5/searchDocument.w')
				}
			}
		});

		/*this.shellImpl.useDefaultExitHandler = false;*/
	};

	Model.prototype.modelLoad = function(event) {
		var me = this;
		if(localStorage.getItem('id') !== null){		
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "queryLocker",
				"async" : false,
				"params" : {
					id : localStorage.getItem('id')
				},
				"success" : function(ret) {
					if(ret.locker =="0"){
						justep.Shell.showPage("main");
					}else{
						//铛铛关闭逻辑，不调用手势密码
						if(localStorage.getItem("isOpen") == "0"){
							justep.Shell.showPage("main");
						}else{
							var params = {set : "1","word" : "需要输入手势密码"};
							//	justep.Shell.showPage("locker",params);
							var src = require.toUrl("./locker.w");
							me.comp("lockerDialog").open({
								src:src,
								data:params
							});
						}
						localStorage.removeItem("isOpen");
					}
				}
			});	
		}else{
			me.comp("loginDialog").open();
		}	

	};

	return Model;
});