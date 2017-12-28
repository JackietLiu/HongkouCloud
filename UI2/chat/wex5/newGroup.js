define(function(require) {
	var $ = require("jquery");
	var IM = require("../base/js/im");
	var Model = function() {
		this.callParent();
	};

	// 显示好友列表
	Model.prototype.addBtnClick = function(event) {
		this.comp("windowDialog").set({
			src : require.toUrl("./chooseContact.w"),
			title : '添加群成员'
		});
		this.comp("windowDialog").open({
			params : {
				fromDialog : true,
				createGroup : true
			}
		});

	};

	Model.prototype.windowDialogReceived = function(event) {
		var self = this, data = event.data, person;
		if (this.comp('contactsData').count() > 0) {
			this.comp('contactsData').clear();
		}
		if (data.length > 0) {
			var pids = [];
			var pnames = [];
			for (var i = 0; i < data.length; i++) {
				if (data[i].val("fSpersonID")) {
					pids.push(data[i].val("fSpersonID"));
					pnames.push(data[i].val("fsName"));
				}
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

	return Model;
});