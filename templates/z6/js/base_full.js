
(function ($) {
    $.fn.Hexagon = function (options) {
        var defaults = {
            post: 'post'
        }
        var options = $.extend(defaults, options);
        var wrapWidth = $(this)[0].offsetWidth,
            postWidth = $("." + options.post)[0].offsetWidth,
            lineNum = Math.floor(wrapWidth / postWidth),
            lineLimit = Math.floor((wrapWidth - 69) / postWidth);
        $("." + options.post).each(function (index) {
            var _this = $(this);
            _this.css({
                'margin-left': '0px'
            });
            if (lineLimit == lineNum) {
                var numPer = index % lineNum;
                if (numPer == 0) {
                    var linePer = Math.floor(index / lineNum) % 2;
                    if (linePer == 1) {
                        _this.css({
                            'margin-left': '69px'
                        });
                    }
                }
            } else {
                var numPer = index % (lineLimit + lineNum);
                if (numPer == 0) {
                    _this.css({
                        'margin-left': '69px'
                    });
                }
            };
        });
    }
})(jQuery);
(function ($) {
    $.fn.nameHover = function () {
        $(".post").hover(function () {
            var b = $(this),
                a = b.find(".game-name");
            a.show();
            $(this).addClass("hover")
        }, function () {
            var b = $(this),
                a = b.find(".game-name");
            a.hide();
            $(this).removeClass("hover")
        });
    }
})(jQuery);
$(function () {
    var $container = $('#site-content');
    
    $container.Hexagon();
    $container.nameHover();
    $(window).resize(function () {
        $container.Hexagon();
    });
    $(".post img").hide();
    $(".post img").one('load', function () {
        $(this).fadeIn();
    }).each(function () {
        if (this.complete) {
            $(this).trigger('load');
        }
    });
});