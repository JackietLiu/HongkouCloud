define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var fileApi = require("$UI/system/components/justep/docCommon/fileApi");
	var PhotoSwipe = require("../lib/photoswipe/photoswipe.min");
	var PhotoSwipeUI_Default = require("../lib/photoswipe/photoswipe-ui-default.min");
	var IM = require("./js/im");
	var Model = function() {
		this.callParent();
		this.curPeer = null;
		this.limit = 20;
		this.offset = 0;
	};

	var messageParse = function(msg) {
		return IM.messageParse(msg, {
			photoClass : 'img-rounded',
			videoClass : 'video',
			audioClass : 'audio',
			fileClass : 'fileMsg',
			linkClass : 'link'
		});
	};

	Model.prototype.modelModelConstructDone = function(event) {
		var id = this.params.id;
		var type = this.params.type;
		this.curPeer = IM.getPeer(id, type);
		var self = this;
		var message;
		if (this.curPeer) {
			IM.searchFiles(this.curPeer, this.limit, this.offset).then(function(result) {
				var rows = [];
				if (result.length > 0) {
					for (var i = 0; i < result.length; i++) {
						message = messageParse(result[i]);
						if (message) {
							rows.push({
								fID : message.mid,
								fContent : message.content,
								fDate : message.date,
								fFileNmae : message.fileName,
								fFileUrl : message.fileUrl,
								fSenderUserName : message.sender.name || message.senderName,
								fImg : message.avatar,
								fType : message.type,
								fWidth :message.option ? message.option.w : '',
								fHeight : message.option? message.option.h:''
							});
						}
					}
					self.comp('data').loadData(rows);
					$(self.comp("searchDoc").domNode).show();
				} else {
					justep.Util.hint('暂无历史文档');
				}
			});
		}
		this.initEvent(event);
	};

	Model.prototype.scrollViewPullUp = function(event) {
		var self = this;
		this.offset = this.offset + this.limit;
		var message;
		if (this.curPeer) {
			IM.searchFiles(this.curPeer, this.limit, this.offset).then(function(result) {
				var rows = [];
				if (result.length > 0) {
					for (var i = 0; i < result.length; i++) {
						message = messageParse(result[i]);
						if (message) {
							rows.push({
								fID : message.mid,
								fContent : message.content,
								fDate : message.date,
								fFileNmae : message.fileName,
								fFileUrl : message.fileUrl,
								fSenderUserName : message.sender.name || message.senderName,
								fImg : message.avatar,
								fType : message.type,
								fWidth : message.option ? message.option.w : '',
								fHeight : message.option ? message.option.h : ''
							});
						}
					}
					self.comp('data').loadData(rows,true);
					$(self.comp("searchDoc").domNode).show();
				} else {
					justep.Util.hint('暂无更多历史文档');
				}
			});
		}
	};

	var getPhotos = function(data) {
		var row, photos = [];
		data.each(function(params) {
			row = params.row;
			if (row.val("fType") === "photo") {
				photos.push({
					w : row.val('fWidth'),
					h : row.val('fHeight'),
					fileName : row.val("fFileName"),
					url : row.val("fFileUrl")
				});
			}
		});
		return photos;
	};
	Model.prototype.initEvent = function(event) {
		var list = this.getElementByXid('list');
		$(list).on("click.photo", ".img-rounded", this.viewImageHandle.bind(this));
		$(list).on("click.file", "a.fileMsg", this.fileClickHandle.bind(this));
	};
	Model.prototype.viewImageHandle = function(event) {
		// TODO 图片预览
		var data = this.comp('data');
		var index;
		var photos = getPhotos(data);
		if (photos.length > 0) {
			var ctx = justep.Bind.contextFor(event.target);
			var fileUrl = ctx.$object.val("fFileUrl");
			index = -1;
			$.each(photos, function(i, photo) {
				if (photo.url === fileUrl) {
					index = i;
					return false;
				}
			});
			if (index > -1) {
				this.showImgs(photos, index);
			}
		}
	};

	Model.prototype.showImgs = function(photos, index) {
		var self = this;
		var pswpElement = this.getElementByXid('pswp');
		var items = [];
		$.each(photos, function(i, photo) {
			items.push({
				src : photo.url,
				w : photo.w,
				h : photo.h
			});
		});
		var options = {
			index : index,
			history : false,
			captionEl : false,
			fullscreenEl : false,
			shareEl : false,
			maxSpreadZoom : 3,
			tapToClose : true
		};
		this.fireEvent("onShowImg", {
			options : options,
			items : items
		});
		this._gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options);
		this._gallery.listen('close', function() {
			self.comp('router').removeRouteItem('gallery');
			self.comp('router').publishState();
		});
		this._gallery.init();
		this.comp('router').addRouteItem('gallery');
		this.comp('router').publishState();
	};

	Model.prototype.fileClickHandle = function(event) {
		var ctx = justep.Bind.contextFor(event.target);
		var fileUrl = ctx.$object.val("fFileUrl");
		var fileName = ctx.$object.val("fFileName");
		fileApi.browse(fileUrl, fileName);
	};
	Model.prototype.routerRoute = function(event) {
		if (event.name === "gallery" && event.routeState === "leave") {
			this._gallery.close();
		}
	};

	return Model;
});