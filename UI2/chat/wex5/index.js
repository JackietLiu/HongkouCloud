define(function(require) {
	var justep = require("$UI/system/lib/justep");
	var IMWex5Impl = require("./js/im.wex5.impl");
	var WindowDialog = require("$UI/system/components/justep/windowDialog/windowDialog");
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var Model = function() {
		this.callParent();
		this._cfg.loginURL = './login.w',
		this._cfg.pageMappings = {
				"main" : {
					url : require.toUrl('./main.w')
				},
				"message" : {
					url : require.toUrl('./message.w')
				},
				"contact" : {
					url : require.toUrl('./contact.w')
				},
				"personal" : {
					url : require.toUrl('./personal.w')
				},
				"newfriend" : {
					url : require.toUrl('./newFriend.w')
				},
				"newgroup" : {
					url : require.toUrl('./newGroup.w')
				},
				"groupmembers" : {
					url : require.toUrl('./group.w')
				},
				"addmembers" : {
					url : require.toUrl('./addMembers.w')
				},
				"editUser" : {
					url : require.toUrl('./editUser.w')
				},
				"editGroup" : {
					url : require.toUrl('./editGroup.w')
				},
				"orgTree" : {
					url : require.toUrl('./orgTree.w')
				},
				"findAllText" : {
					url : require.toUrl('./findAllText.w')
				},
				"workPage" : {
					url : require.toUrl('../pc/workPage.w')
				},
				"createDlgByDept" : {
					url : require.toUrl('./createDlgByDept.w')
				},
				'searchDocument' : {
					url : require.toUrl('./searchDocument.w')
				}
		};

		
		 StatusBar.backgroundColorByHexString("#2FA4E7");
		/*  this._cfg.pageMappings.useDefaultExitHandler = false;
		CommonUtils.attachDoubleClickExitApp(function() {		
			var isHomePage = shellImpl.pagesComp.contents[0].innerContainer.getInnerModel().comp('contents2').getActiveIndex() == 0;
			if (this._cfg.pageMappings.pagesComp.getActiveIndex() === 0 && isHomePage) {
				return true;
			}
			return false;
		});*/
	};
	Model.prototype.getLoginDialog = function() {
		if (!this._loginDlg) {
			this._loginDlg = new WindowDialog({
				title : 'login',
				showTitle : false,
				src : require.toUrl(this._cfg.loginURL),
				parentNode : this.getRootNode()
			});
		}
		return this._loginDlg;
	};
	Model.prototype.createIMImpl = function() {
		new IMWex5Impl(this);
	};

	Model.prototype.createShellImpl = function() {
		this.callParent();

		justep.Shell.on('onGroupInfoPage', function(event) {
			justep.Shell.showPage('groupmembers', {
				id : event.id,
				type : event.type
			});
		});
		justep.Shell.on('onContactInfoPage', function(event) {
			justep.Shell.showPage("contact", {
				contactId : event.contactId,
				name : event.name
			});
		});

	};

	Model.prototype.loggedIn = function() {
		this.callParent();
		if (this._status >= 3) {
			// 特殊逻辑，否则路由有问题
			justep.Shell.showMainPage();
		} else {
			this.on('onModelConstructDone', function() {
				// 特殊逻辑，否则路由有问题
				justep.Shell.showMainPage();
			});
		}
	};
	Model.prototype.toChooseOrg = function(event) {
		if (this._status >= 3) {
			// 特殊逻辑，否则路由有问题
			justep.Shell.showPage("$UI/work/org/chooseOrgActivity.w", {
				personID : event.personID
			});
		} else {
			this.on('onModelConstructDone', function() {
				justep.Shell.showPage("$UI/work/org/chooseOrgActivity.w", {
					personID : event.personID
				});
			});
		}
		// 跳转到选择组织的页面
	};


	return Model;
});