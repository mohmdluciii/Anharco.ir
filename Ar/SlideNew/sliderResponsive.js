(function($) {
    "use strict";
    $.fn.sliderResponsive = function(settings) {

        var set = $.extend(
      {
          slidePause: 5000,
          fadeSpeed: 800,
          autoPlay: "on",
          showArrows: "off",
          hideDots: "off",
          hoverZoom: "on",
          titleBarTop: "off"
      },
      settings
    );

        var $slider_amir = $(this);
        var size = $slider_amir.find("> div").length; //number of slides
        var position = 0; // current position of carousal
        var sliderIntervalID; // used to clear autoplay

        // Add a Dot for each slide
        $slider_amir.append("<ul></ul>");
        $slider_amir.find("> div").each(function() {
            $slider_amir.find("> ul").append('<li></li>');
        });

        // Put .show on the first Slide
        $slider_amir.find("div:first-of-type").addClass("show");

        // Put .showLi on the first dot
        $slider_amir.find("li:first-of-type").addClass("showli")

        //fadeout all items except .show
        $slider_amir.find("> div").not(".show").fadeOut();

        // If Autoplay is set to 'on' than start it
        if (set.autoPlay === "on") {
            startSlider();
        }

        // If showarrows is set to 'on' then don't hide them
        if (set.showArrows === "on") {
            $slider_amir.addClass('showArrows');
        }

        // If hideDots is set to 'on' then hide them
        if (set.hideDots === "on") {
            $slider_amir.addClass('hideDots');
        }

        // If hoverZoom is set to 'off' then stop it
        if (set.hoverZoom === "off") {
            $slider_amir.addClass('hoverZoomOff');
        }

        // If titleBarTop is set to 'on' then move it up
        if (set.titleBarTop === "on") {
            $slider_amir.addClass('titleBarTop');
        }

        // function to start auto play
        function startSlider() {
            sliderIntervalID = setInterval(function() {
                nextSlide();
            }, set.slidePause);
        }

        // on mouseover stop the autoplay
        $slider_amir.mouseover(function() {
            if (set.autoPlay === "on") {
                clearInterval(sliderIntervalID);
            }
        });

        // on mouseout starts the autoplay
        $slider_amir.mouseout(function() {
            if (set.autoPlay === "on") {
                startSlider();
            }
        });

        //on right arrow click
        $slider_amir.find("> .right").click(nextSlide)

        //on left arrow click
        $slider_amir.find("> .left").click(prevSlide);

        // Go to next slide
        function nextSlide() {
            position = $slider_amir.find(".show").index() + 1;
            if (position > size - 1) position = 0;
            changeCarousel(position);
        }

        // Go to previous slide
        function prevSlide() {
            position = $slider_amir.find(".show").index() - 1;
            if (position < 0) position = size - 1;
            changeCarousel(position);
        }

        //when user clicks slider_amir button
        $slider_amir.find(" > ul > li").click(function() {
            position = $(this).index();
            changeCarousel($(this).index());
        });

        //this changes the image and button selection
        function changeCarousel() {
            $slider_amir.find(".show").removeClass("show").fadeOut();
            $slider_amir
        .find("> div")
        .eq(position)
        .fadeIn(set.fadeSpeed)
        .addClass("show");
            // The Dots
            $slider_amir.find("> ul").find(".showli").removeClass("showli");
            $slider_amir.find("> ul > li").eq(position).addClass("showli");
        }

        return $slider_amir;
    };
})(jQuery);
