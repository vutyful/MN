(function ($) {
    'use strict';

    var browserWindow = $(window);



    // :: 4.0 niceSelect Active Code
    if ($.fn.niceSelect) {
        $("select").niceSelect();
    }

    // :: 6.0 Sliders Active Code
    if ($.fn.owlCarousel) {

        var welcomeSlide = $('.hero-post-slides');
        var videoSlides = $('.video-slides');
        var albumSlides = $('.albums-slideshow');

        welcomeSlide.owlCarousel({
            items: 3,
            margin: 30,
            loop: true,
            nav: true,
            navText: ['Prev', 'Next'],
            dots: false,
            autoplay: true,
            center: true,
            autoplayTimeout: 7000,
            smartSpeed: 1000,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                992: {
                    items: 3
                }
            }
        });

        welcomeSlide.on('translate.owl.carousel', function () {
            var slideLayer = $("[data-animation]");
            slideLayer.each(function () {
                var anim_name = $(this).data('animation');
                $(this).removeClass('animated ' + anim_name).css('opacity', '0');
            });
        });

        welcomeSlide.on('translated.owl.carousel', function () {
            var slideLayer = welcomeSlide.find('.owl-item.active').find("[data-animation]");
            slideLayer.each(function () {
                var anim_name = $(this).data('animation');
                $(this).addClass('animated ' + anim_name).css('opacity', '1');
            });
        });

        $("[data-delay]").each(function () {
            var anim_del = $(this).data('delay');
            $(this).css('animation-delay', anim_del);
        });

        $("[data-duration]").each(function () {
            var anim_dur = $(this).data('duration');
            $(this).css('animation-duration', anim_dur);
        });
    }

    // :: 7.0 ScrollUp Active Code
    if ($.fn.scrollUp) {
        browserWindow.scrollUp({
            scrollSpeed: 1500,
            scrollText: '<i class="fa fa-angle-up"></i>'
        });
    }
    

})(jQuery);