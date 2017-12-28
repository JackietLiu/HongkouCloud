define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IMChatImpl = require("../js/im.impl");
	var IM = require("../../base/js/im");
	var WindowDialog = require("$UI/system/components/justep/windowDialog/windowDialog");
	var Model = function() {
		this.callParent();
		this._cfg.pageMappings.main = {
			url : require.toUrl("./main-message.w")
		};
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
		new IMChatImpl(this);
	};

	Model.prototype.showLoginDialog = function() {
		IM.login({});
	};
	Model.prototype.createShellImpl = function() {
		this.callParent();
		justep.Shell.Urls = {
			"message" : require.toUrl("./message.w")
		};
	};
	return Model;
});