define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IM = require("../../base/js/im");
	var Clipboard = require("../../lib/clipboard.min");
	var Model = function() {
		this.callParent();
		this.on("onShowImg", function(event) {
			if (event.items instanceof Array)
				$.each(event.items, function(i, item) {
					if (item.w && item.h) {
						item.w *= 2;
						item.h *= 2;
					}
				});
		});

	};

	var createClipboard = function(node, textFn) {
		var clipboard = new Clipboard(node, {
			text : textFn
		});
		return clipboard;
	};

	Model.prototype.modelLoad = function(event) {
		this.callParent(event);
		var msgPopMenu = this.comp('msgPopMenu');
		var self = this;
		this.clipboard = createClipboard(this.getElementByXid('copyBtn'), function() {
			return self._getHtmlText(msgPopMenu._fContent);
		});
	};

	Model.prototype.modelModelConstructDone = function(event) {
		this.callParent(event);
		this.comp('superinput').on("screenCapture", function(event) {
			event.source.$content.focus();
			document.execCommand("paste");
		});
		this.comp('superinput').changeInputMode(false, false);
		this.comp('superinput').on('onClosePicker', function(event) {
			event.cancel = true;
		});
	};

	Model.prototype.modelUnLoad = function(event) {
		this.callParent(event);
		if (this.clipboard)
			this.clipboard.destroy();
	};

	// Model.prototype.getLinkDlgUrl = function() {
	// return require.toUrl('./link.w');
	// };

	Model.prototype.showPerson = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./contact.w"),
			title : '联系人信息'
		});
		this.comp("windowDialog").open({
			params : {
				"contactId" : IM.getPersonByUID(this.curPeer.id).id,
				"formDilog" : true
			}
		});
	};

	Model.prototype.showClipboardImage = function(img) {
		this.comp("showClipboardImageDlg").set({
			src : require.toUrl("./showClipboardImage.w"),
			title : '剪切板图片'
		});
		this.comp("showClipboardImageDlg").open({
			params : {
				img : img,
				id : this.curPeer.id,
				type : this.curPeer.type
			}
		});
	};

	Model.prototype.groupInfoBtn = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./group.w"),
			title : '群组信息'
		});
		this.comp("windowDialog").open({
			params : {
				id : this.curPeer.id,
				type : this.curPeer.type,
				formDilog : true
			}
		});
	};

	Model.prototype.contactInfo = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./contact.w"),
			title : '联系人信息'
		});
		this.comp("windowDialog").open({
			params : {
				"contactId" : event.bindingContext.$object.val("fSenderPID"),
				"type" : this.curPeer.type,
				"formDilog" : true
			}
		});
	};

	// 复制功能
	Model.prototype.copyBtnClick = function(event) {

	};

	// 转发
	Model.prototype.transmitBtnClick = function(event) {
		this.comp("transmitWindowDialog").set({
			src : require.toUrl("./contactList.w"),
			title : '选择转发人',
			status : 'normal'
		});
		this.comp("transmitWindowDialog").open({
			params : {
				fromDialog : true,
			}
		});
	};

	Model.prototype.searchTextClick = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./findAllText.w"),
			title : '搜索聊天信息'
		});
		this.comp("windowDialog").open({
			params : {
				id : this.curPeer.id,
				type : this.curPeer.type
			}
		});
	};
	Model.prototype.searchDocClick = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./searchDocument.w"),
			title : '历史文档'
		});
		this.comp("windowDialog").open({
			params : {
				id : this.curPeer.id,
				type : this.curPeer.type
			}
		});
	};
	Model.prototype.optionTransmitBtnClick = function(event) {
		this.comp("transmitWindowDialog").set({
			src : require.toUrl("./contactList.w"),
			title : '选择转发人',
			status : 'normal'
		});
		this.comp("transmitWindowDialog").open({
			params : {
				fromDialog : true,
			}
		});
	};

	Model.prototype.addMoreMsgClick = function(event) {
		this.msgScrollViewPullDown();
	};

	return Model;
});