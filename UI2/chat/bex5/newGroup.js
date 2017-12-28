define(function(require) {
	var $ = require("jquery");
	var IM = require("../base/js/im");
	var IMBizImpl = require("./js/im.biz.impl");
	var Model = function() {
		this.callParent();
	};

	// 显示好友列表
	Model.prototype.addBtnClick = function(event) {
		var self = this;
		if (IM.impl instanceof IMBizImpl)
			IM.impl.loginBiz().then(function() {
				self.comp("personalOrgDialog").open({
					"data" : {
						selected : {
							kind : "",
							value : ""
						}
					}
				});
			});

	};

	Model.prototype.personalOrgDialogReceive = function(event) {
		if(event.data.length > 0){
			var self = this, data = event.data, person;
			var pids = [];
			var pnames = [];
			for (var i = 0; i < data.length; i++) {
				pids.push(data[i].val("sPersonID"));
				pnames.push(data[i].val("sName"));
			}
			IM.registerUsers(pids, pnames).done(function(result) {
				var rows = [];
				var personsId = [];//人员ID数组，防止人员重复。
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
		}else{
			$(this.comp("newfirend").domNode).hide();
		}
	};

	return Model;
});