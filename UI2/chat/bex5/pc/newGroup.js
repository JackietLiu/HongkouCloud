define(function(require) {
	// var $ = require("jquery");
	var IM = require("../../base/js/im");
	var justep = require("$UI/system/lib/justep");
	var IMBizImpl = require("../js/im.biz.impl");
	var Model = function() {
		this.callParent();
		this.userIds = [];
	};
	Model.prototype.addBtnClick = function(event) {
		var self = this;
		if (IM.impl instanceof IMBizImpl)
			IM.impl.loginBiz().then(function() {
				self.comp("orgDialogPC").open({
					"data" : {
						selected : []
					}
				});
			});
	};
	Model.prototype.orgDialogPCReceive = function(event) {
		if (event.data.length > 0) {
			var self = this, data = event.data, person;
			var pids = [];
			var pnames = [];
			for (var i = 0; i < data.length; i++) {
				pids.push(data[i].val("sPersonID"));
				pnames.push(data[i].val("sName"));
			}
			IM.registerUsers(pids, pnames).done(function(result) {
				var rows = [];
				var personsId = [];// 人员ID数组，防止人员重复。
				$.each(result, function(i, v) {
					person = IM.getPerson(v.outId);
					if (personsId.indexOf(person.id) < 0) {
						self.userIds.push(person.uid);
						personsId.push(person.id);
						rows.push({
							fID : person.uid,
							fName : person.name,
							fNickName : person.name,
							fImg : person.avatar ? person.avatar : IM.getPersonDefaultIcon(),
							fAbout : person.about
						});
					}
				});
				self.comp("contactsData").loadData(rows);
				$(self.comp("newfirend").domNode).show();
			});
		} else {
			$(this.comp("newfirend").domNode).hide();
		}
	};
	Model.prototype.createGroupBtnClick = function(event) {
		var title = this.comp('groupName').val();
		var self = this;
		if (this.createGroupState.get()) {
			this.createGroupState.set(false);
			if (title) {
				IM.createGroup(title, null, this.userIds).then(function(peer) {
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