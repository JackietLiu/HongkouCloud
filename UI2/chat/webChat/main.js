define(function(require){
//	var $ = require("jquery");
	var IM = require("../base/js/im");
	var Utils = require("../lib/utils");
	var SuperInput = require("../lib/superInput/superInput");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.getMessageUrl = function(){
		return require.toUrl('./message.w');
	};
	Model.prototype.getRowCallback = function(item, row) {
		var person = item.peer.peer.type === "user" ? IM.getPersonByUID(item.peer.peer.id) : {};
		var nickName = item.peer.peer.type === "user" ? person.name || item.peer.title : item.peer.title;
		var img = item.peer.peer.type === "user" ? IM.getPersonDefaultIcon() : item.peer.avatar ? item.peer.avatar : IM.getGroupDefaultIcon();
		if (row) {
			row.val('fID', item.peer.peer.id);
			row.val('fType', item.peer.peer.type);
			row.val('fNickName', nickName);
			row.val('fCounter', item.counter);
			row.val('fImg', img);
			row.val('fLatestChat', SuperInput.emojiParse(Utils.getLatestChat(item)));
			row.val('fLatestChatDate', Utils.getDate(item.date));
		} else {
			row = {
				fID : item.peer.peer.id,
				fType : item.peer.peer.type,
				fNickName : nickName,
				fCounter : item.counter,
				fImg : item.peer.peer.type === "user" ?IM.getPersonDefaultIcon() : item.peer.avatar ? item.peer.avatar : IM.getGroupDefaultIcon(),
				fLatestChat : SuperInput.emojiParse(Utils.getLatestChat(item)),
				fLatestChatDate : Utils.getDate(item.date)
			};
		}
		return row;
	};
	return Model;
});