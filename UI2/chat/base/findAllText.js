define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IM = require("./js/im");

	var Model = function() {
		this.callParent();
		this.curPeer = null;
		this.limit = 20;
		this.offset = 0;
		this.searchVal;
	};

	Model.prototype.modelParamsReceive = function(event) {
		var id = this.params.id;
		var type = this.params.type;
		this.curPeer = IM.getPeer(id, type);
		$(this.getElementByXid("input")).focus();
	};

	Model.prototype.searchClick = function(event) {
		var self = this;
		if (this.curPeer) {
			this.searchVal = $(this.getElementByXid("input")).val();
			this.offset = 0;
			IM.searchText(this.curPeer, this.searchVal, this.limit, this.offset).then(function(result) {
				var rows = [];
				var message;
				if (result.length > 0) {
					self.resultSize = result.length;
					for (var i = 0; i < result.length; i++) {
						message = result[i];
						rows.push({
							fID : message.rid,
							fContent : message.content.text,
							fMessageTime : message.date,
							fImg : IM.getPersonByUID(message.sender.peer.id).avatar,
							fSenderName : IM.getPersonByUID(message.sender.peer.id).name || message.sender.title
						});
					}
					self.comp("textData").loadData(rows);
					$(self.comp("searchText").domNode).show();
				} else {
					justep.Util.hint("暂无此条消息记录");
					self.comp("textData").clear();
					$(self.comp("searchText").domNode).hide();
				}
			});
		}
	};
	Model.prototype.scrollViewPullUp = function(event) {
		var self = this;
		this.offset = this.offset + this.limit;
		IM.searchText(this.curPeer, this.searchVal, this.limit, this.offset).then(function(result) {
			var rows = [];
			var message;
			if (result.length > 0) {
				self.resultSize = result.length;
				for (var i = 0; i < result.length; i++) {
					message = result[i];
					rows.push({
						fID : message.rid,
						fContent : message.content.text,
						fMessageTime : message.date,
						fImg : IM.getPersonByUID(message.sender.peer.id).avatar,
						fSenderName : IM.getPersonByUID(message.sender.peer.id).name || message.sender.title
					});
				}
				self.comp("textData").loadData(rows, true);
			} else {
				justep.Util.hint("暂无更多消息记录");
			}
		});
	};

	Model.prototype.inputKeypress = function(event) {
		if (event.keyCode === 13)
			this.searchClick(event);
	};

	return Model;
});