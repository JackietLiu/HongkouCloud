(function(factory) {
	"use strict";
	if (typeof define === 'function' && define.amd) {
		define([ 'jquery' ], function($) {
			return factory($, window, document);
		});
	} else if (typeof exports === 'object') {
		module.exports = function(root, $) {
			if (!root) {
				root = window;
			}
			if (!$) {
				$ = typeof window !== 'undefined' ? require('jquery') : require('jquery')(root);
			}
			return factory($, root, root.document);
		};
	} else {
		factory(jQuery, window, document);
	}
}(function($, win, doc) {
	"use strict";
	var IM = function(cfg) {
		this.init(cfg);
		this.inited = cfg.inited;
		this.iframe;
		this.node = cfg.node;
	};

	IM.prototype = {
		init : function(cfg) {
			this._createIF(cfg);
			this._initEvent();
		},
		_initEvent : function() {
			var me = this;
			win.addEventListener('message', function(e) {
				var message = JSON.parse(e.data);
				if (message.type === 'information') {
					if (message.information === 'createIMDone') {
						me.inited();
					} else if (message.information === 'exit') {
						me.doExit();
					}
				} else if (message.type = 'error') {
					throw new Error(message.error);
				}

			}, false);

		},
		showDlgList : function() {
			this.iframe.style.display = 'block';
		},
		showMessagePage : function(id, name) {
			var message = {
				type : "function",
				functionName : 'showMessagePage',
				id : id,
				name : name
			};
			message = JSON.stringify(message);
			this.iframe.contentWindow.postMessage(message, '*');
		},
		doExit : function() {
			if (this.node.firstChild) {
				this.node.removeChild(this.node.firstChild);
			}

		},
		exit : function() {
			var message = {
				type : 'function',
				functionName : 'exit',
			};
			message = JSON.stringify(message);
			this.iframe.contentWindow.postMessage(message, '*');
		},
		createGroup : function(ids, names, groupName) {
			var message = {
				type : 'function',
				functionName : 'createGroup',
				ids : ids,
				names : names,
				groupName : groupName
			};
			message = JSON.stringify(message);
			this.iframe.contentWindow.postMessage(message, '*');
		},
		sendTextMessage : function(id, name, text) {
			var message = {
				type : "function",
				functionName : 'sendTextMsg',
				id : id,
				name : name,
				text : text
			};
			message = JSON.stringify(message);
			this.iframe.contentWindow.postMessage(message, '*');
		},
		_createIF : function(cfg) {
			this.iframe = doc.createElement('iframe');
			var url = cfg.url + '?id=' + cfg.id + '&name=' + cfg.name+'&token='+cfg.token;
			url = win.encodeURI(url);
			this.iframe.setAttribute('src', url);
			this.iframe.style.width = '100%';
			this.iframe.style.position = 'relative';
			this.iframe.style.height = 'inherit';
			this.iframe.style.border = 'none';
			this.iframe.style.display = 'none';
			cfg.node.appendChild(this.iframe);
		},

	};
	IM.createChat = function(cfg) {
		var im;
		var dtd = $.Deferred();
		cfg.inited = function() {
			dtd.resolve(im);
		};
		im = new IM(cfg);
		return dtd;
	};

	win.IM = IM;
	return IM;
}));