define(function(require) {
	var $ = require("jquery");
	var IM = require("../../base/js/im");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
	};

	// 显示好友列表
	Model.prototype.addBtnClick = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./chooseContact.w"),
			status : "normal",
			title : '添加群成员'
		});
		this.comp("windowDialog").open({
			params : {
				fromDialog : true,
				createGroup : true
			}
		});

	};
	Model.prototype.createGroupBtnClick = function(event) {
		var title = this.comp('groupName').val();
		var self = this;
		if (this.createGroupState.get()) {
			this.createGroupState.set(false);
			if (title) {
				IM.createGroup(title, null, this.userIds).then(function(peer) {
					if (self.params.discussionGroup) {
						IM.updateGroupShared(peer.id, "#|$,1");
					}
					justep.Shell.fireEvent("onGroupSendMessagePage", {
						id : peer.id,
						type : peer.type
					});
					self.owner.close();
				});
			} else {
				// justep.Util.hint("请输入群名称！");
				var data = this.comp('contactsData');
				if (data.count() < 3) {
					data.each(function(params) {
						var row = params.row;
						title = title + '、' + row.val('fName');
					});
					title = IM.getCurrentPerson().name + title + '...';
					IM.createGroup(title, null, this.userIds).then(function(peer) {
						if (self.params.discussionGroup) {
							IM.updateGroupShared(peer.id, "#|$,1");
						}
						justep.Shell.fireEvent("onGroupSendMessagePage", {
							id : peer.id,
							type : peer.type
						});
						self.owner.close();
					});
				} else {
					var index = 1;
					data.each(function(params) {
						if (index < 3) {
							var row = params.row;
							title = title + '、' + row.val('fName');
						}
						index++;
					});
					title = IM.getCurrentPerson().name + title + '...';
					IM.createGroup(title, null, this.userIds).then(function(peer) {
						if (self.params.discussionGroup) {
							IM.updateGroupShared(peer.id, "#|$,1");
						}
						justep.Shell.fireEvent("onGroupSendMessagePage", {
							id : peer.id,
							type : peer.type
						});
						self.owner.close();
					});
				}
			}
		} else {
			justep.Util.hint("正在创建群组请稍后...");
		}
	};
	return Model;
});