define(function(require) {
	// var $ = require("jquery");
	var Push = require("$UI/system/lib/base/push");
	var justep = require("$UI/system/lib/justep");
	var IMImpl = require('../../base/js/im.impl');
	var Person = require("../../base/js/person");
	var store = require('$UI/system/lib/base/store');

	var paraObj;
	var request = function(paras) {
		if(!paraObj){
			paraObj={};
			var url = window.decodeURI(location.search);
			var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
			var i,j;
			for ( i = 0;  j = paraString[i]; i++) {
				paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
			}
		}
		var returnValue = paraObj[paras.toLowerCase()];
		return returnValue!==undefined?returnValue:"";
	};
	
	var _loginData_;
	var _loginID;
	var _loginName;
	var password = [ 15, 52, 60, 73, 12, 11, 86, 35 ];
	var loadLoginDataByStore = function() {
		if (_loginData_)
			return _loginData_;
		var data = store.get('chat_loginData');
		if (data) {
			data = encrypt(data, password);
			_loginData_ = JSON.parse(data);
			return _loginData_;
		}
	};
	var encrypt = function(str, key) {
		var ret = '', keyLen = key.length;
		for (var i = 0; i < str.length; i++) {
			ret += String.fromCharCode(str.charCodeAt(i) ^ key[i % keyLen]);
		}
		return ret;
	};
	var loginByRequest = function(params) {
		var loginData = loadLoginDataByStore();
		var ret = {};
		_loginID = request("id");
		_loginName = request("name");
		var token = request("token");
		if(loginData&&loginData.personID!==_loginID&&loginData.personName!==_loginName){
			localStorage.clear();
		}
		if (_loginID && _loginName) {
			ret.flag = true;
			ret.personID = _loginID;
			ret.personName = _loginName;
			ret.token = token;
			ret.isInOrg = true;
		}
		return ret;
	};
	var postMessage = function(w, message) {
		var m = JSON.stringify(message);
		w.postMessage(m, "*");
	};
	var parseMessage = function(message) {
		return JSON.parse(message);
	};
	var IMWebChatImpl = IMImpl.extend({
		loadPerson : function(persons, pid) {
			var deferred = $.Deferred();
			//var ret = loginByRequest();
			var p = {
				id : _loginID,//ret.personID,
				name : _loginName,//ret.personName,
				uid : '',
				avatar : '',
				nick : '',
				phones : '',
				about : ''
			};
			this.persons = persons;
			persons[_loginID] = new Person(p);
			deferred.resolve(persons);
			return deferred.promise();
		},
		loginActor : function() {
			var self = this;
			var result = this.callParent();
			result.done(function() {
				// TODO chat.js模块化后需修改
				var message = {
					"type" : "information",
					"information" : "createIMDone"
				};
				var w = window.parent;
				postMessage(w, message);
				window.addEventListener('message', function(e) {
					var message = parseMessage(e.data);
					var id,name;
					if (message.type === "function") {
						if (message.functionName === 'showMessagePage') {
							 id = message.id;
							 name = message.name;
							self.showMessagePage(id, name);
						} else if (message.functionName === 'sendTextMsg') {
							 id = message.id;
							 name = message.name;
							var text = message.text;
							self.sendTextMsg(id, name, text);
						} else if (message.functionName === 'exit') {
							self.exit();
						}else if (message.functionName === 'createGroup'){
							var ids = message.ids;
							var names = message.names;
							var groupName = message.groupName;
							self.newGroup(ids,names,groupName);
						}
					}

				}, false);
			});
			return result;
		},
		newGroup :function(ids,names,groupName){
			var self = this;
			this.registerUsers(ids,names).done(function(result){
				var uids = [];
				var title = groupName;
				$.each(result, function(i, v) {
					uids.push(v.id);
				});
				self.createGroup(title, null, uids).then(function(peer) {
					justep.Shell.fireEvent("onSendMessagePage", {
						id : peer.id,
						type : peer.type
					});
				});
			});
		},
		exit : function() {
			localStorage.clear();
			var message = {
				"type" : "information",
				"information" : "exit"
			};
			postMessage(window.parent, message);
		},
		showMessagePage : function(id, name) {
			var person = this.persons[id];
			if (!person) {
				var p = {
					id : id,
					name : name,
					uid : '',
					avatar : '',
					nick : '',
					phones : '',
					about : ''
				};
				this.persons[id] = new Person(p);
			}
			// var persons = this.persons;
			this.addFriend(this.persons[id]).then(function(uid) {
				justep.Shell.fireEvent("onSendMessagePage", {
					id : uid,
					type : "user"
				});
			}).fail(function(error) {
				var message = {
					type : 'error',
					error : error
				};
				postMessage(window.parent, message);
			});
		},
		sendTextMsg : function(id, name, text) {
			var self = this;
			var p = {
				id : id,
				name : name,
				uid : '',
				avatar : '',
				nick : '',
				phones : '',
				about : ''
			};
			this.persons[id] = new Person(p);
			this.addFriend(this.persons[id]).then(function(uid) {
				var peer = self.getUserPeer(uid);
				self.sendTextMessage(peer, text);
			}).fail(function(error) {
				var message = {
					type : 'error',
					error : error
				};
				postMessage(window.parent, message);
			});
		},
		doLogin : function() {
			return loginByRequest();
		},
		
		doLogout : function() {
			// hcr 添加推送相关
			Push.disConnect();
		},
		updatePersonUid : function(uid, pid, rows) {
			var deferred = $.Deferred();
			var person;
			if(uid&&pid){				
				person = this._getPerson(pid);
				person.uid = uid;
			}else{
				for(var i = 0; i <rows.length;i++){
					person = this._getPerson(rows[i].outId);
					if (person) {
						person.uid = rows[i].id;
					}
				}
			}
			deferred.resolve();
			return deferred.promise();
		},

	});

	return IMWebChatImpl;
});