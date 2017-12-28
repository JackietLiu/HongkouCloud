define(function(require) {
	var IM = require("../base/js/im");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.getImageUrl = function(url) {
		if (url) {
			return require.toUrl(url);
		} else {
			return "";
		}
	};
	Model.prototype.getContactListUrl = function() {
		return require.toUrl("./contactList.w");
	};

	// 关注
	Model.prototype.attentionBtnClick = function(event) {
		var rid = this.comp('msgPopMenu')._messageId;
		IM.addLike(this.curPeer, rid);
	};
	Model.prototype.optionAttentionBtnClick = function(event) {
		var data = this.comp('messageData');
		var self = this;
		var count = data.count();
		var index = 0;
		data.each(function(params) {
			index++;
			var row = params.row;
			if (row.val("fChecked") === 1) {
				var rid = row.val('fID');
				if (!row.val('fIsOwnSet')) {
					IM.addLike(self.curPeer, rid);
				}
			}
		});
		if (count === index) {
			data.each(function(params) {
				var row = params.row;
				row.val("fChecked", 0);
			});
		}
	};
		return Model;
});