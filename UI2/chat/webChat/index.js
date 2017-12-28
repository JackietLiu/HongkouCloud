define(function(require) {
	// var $ = require("jquery");
	var IMChatImpl = require("./js/im.impl");
	var IM = require("../base/js/im");
	var Model = function() {
		this.callParent();
		this._cfg.pageMappings.main = {
			url : require.toUrl('./main.w')
		};
		this._cfg.pageMappings.message = {
			url : require.toUrl('./message.w')
		};
	};
	Model.prototype.createIMImpl = function() {
		new IMChatImpl(this);
	};

	Model.prototype.showLoginDialog = function() {
		IM.login({});
	};
		Model.prototype.createShellImpl = function() {
		this.callParent();


	};
	return Model;
});