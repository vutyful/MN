(function ($) {
    'use strict';

    var browserWindow = $(window);
    var treadingPost = $('.treading-post-area');

    // :: 2.0 Nav Active Code
    if ($.fn.classyNav) {
        $('#buenoNav').classyNav();
    }

    // :: 3.0 Sticky Active Code
    if ($.fn.sticky) {
        $("#sticker").sticky({
            topSpacing: 0
        });
    }

    // :: 5.0 Video Active Code
    if ($.fn.magnificPopup) {
        $('.img-zoom').magnificPopup({
            type: 'image',
            gallery: {
                enabled: true
            }
        });
    }


    // :: 7.0 ScrollUp Active Code
    if ($.fn.scrollUp) {
        browserWindow.scrollUp({
            scrollSpeed: 1500,
            scrollText: '<i class="fa fa-angle-up"></i>'
        });
    }

    // :: 8.0 Tooltip Active Code
    if ($.fn.tooltip) {
        $('[data-toggle="tooltip"]').tooltip()
    }


    // :: 10.0 Wow Active Code
    if (browserWindow.width() > 767) {
        new WOW().init();
    }

    // :: 11.0 niceScroll Active Code
    if ($.fn.niceScroll) {
        $("#treadingPost").niceScroll();
    }

    // :: 12.0 Toggler Active Code
    $('#toggler').on('click', function () {
        treadingPost.toggleClass('on');
    });
    $('.close-icon').on('click', function () {
        treadingPost.removeClass('on');
    });

})(jQuery);