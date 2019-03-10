var videoLightbox = function (vicode ) {
	// set content
	var $videoBlock = $("#videocontent");
	$videoBlock.html(vicode || window.vicode);
	// get/set content size
	var getElSize = function ($el ) {
		if ($el.attr('width') && $el.attr('width').length ) {
			return {
				width  : $el.attr('width')  || $el.width()  || 'auto',
				height : $el.attr('height') || $el.height() || 'auto',
			}
		} else if ($el.children().length) {
			return getElSize($el.children());
		} else {
			return {
				width  : 'auto',
				height : 'auto',
			}
		}
	};
	var sizes = getElSize($videoBlock);
	$videoBlock.width(sizes.width);
	if ($.browser && $.browser.opera ) $videoBlock.height(sizes.height);
	// open content in lightbox
	$.fancybox({
		href        : "#videocontent",
		fitToView   : false,
		width       : "70%",
		height      : "70%",
		autoSize    : true,
		closeClick  : false,
		openEffect  : "none",
		closeEffect : "none",
		padding     : 3,
		fixed       : fixedFlag,
		afterShow   : function () {
			$('.fancybox-inner').css('overflow', 'hidden !important');
		},
		afterClose  : function () {
			setTimeout(function () {
				$videoBlock.html('');
			}, 100);
		},
		helpers     : {
			title: null,
			overlay: {
				opacity: 0.8,
				speedIn: 0,
				speedOut: 0
			},
			buttons: {}
		}
	})
};

if ((($.browser && $.browser.msie) && ($.browser.version < 10) && (document.compatMode == "BackCompat")) || $.fn.jquery.split('.').map(function (i) {return('0'+i).slice(-2)}).join('.') < '01.07' ) {
	videoLightbox = function () {
		var vTitle = $('.vep-title').text();
		new _uWnd('', vTitle, 7, 7, {autosize:1, hideonmove:0, fadetype:0, modal:1, resize:0, fadeclosetype:0, closeonesc:1, align:'left'}, (vicode || window.vicode));
	};
}

/* ---- category obj ---- */
var category = function (cat_type ) {
	this.cat_type  = cat_type;
	this.imgStore  = {
		EMPTY  : '/.s/img/vi/deficon/cat-arrow.png',
		OPENED : '/.s/img/vi/deficon/c_m.png',
		CLOSED : '/.s/img/vi/deficon/c_p.png',
	};
	this.tr_states = [];
	this.tr_group  = function (id, container ) {
		if (!this.tr_states[id] ) {
			this.tr_states[id] = {state:'closed'};
		}
		if (this.tr_states[id].state == 'closed' ) {
			this._set_bg(id, this.imgStore['OPENED']);
			this.tr_states[id].state = 'opened';
			$('#'+this.cat_type+'_'+id).show();
		} else {
			this._set_bg(id, this.imgStore['CLOSED']);
			this.tr_states[id].state = 'closed';
			$('#'+this.cat_type+'_'+id).hide();
		}
	};
	this.opBranch  = function (data, type ) {
		for (var idx = 0; idx < data.length - 1; idx++ ) {
			this.tr_group(data[idx]);
		}
	};
	this._set_bg   = function (id, src ) {
		$('#'+this.cat_type+'_row'+id+'_trigger').css('background-image', 'url('+src+')');
	};
	this._error    = function (msg ) {
		_uWnd.alert("<div style='margin-top:15px' class='myWinError'>"+msg+'</div>', '', {w:250, h:90, tm:5000});
	};
};
