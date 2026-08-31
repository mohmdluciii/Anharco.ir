(function () {
    function pageIsRtl() {
        var html = document.documentElement;
        var dir = ((html.getAttribute("dir") || "") + " " + ((document.body && document.body.getAttribute("dir")) || "")).toLowerCase();
        if (dir.indexOf("rtl") !== -1) {
            return true;
        }
        var lang = (html.getAttribute("lang") || "").toLowerCase();
        return lang === "fa" || lang === "ar" || lang.indexOf("fa-") === 0 || lang.indexOf("ar-") === 0;
    }

    function init() {
        var root = document.querySelector(".leadershipStick");
        if (!root || typeof Swiper === "undefined") {
            return;
        }
        if (root.getAttribute("data-lead-swiper") === "1") {
            return;
        }
        var isRtl = pageIsRtl();
        root.setAttribute("dir", isRtl ? "rtl" : "ltr");
        root.style.direction = isRtl ? "rtl" : "ltr";
        var prev = root.querySelector(".swiper-button-prev");
        var next = root.querySelector(".swiper-button-next");
        var swiper = new Swiper(root, {
            slidesPerView: "auto",
            centeredSlides: true,
            spaceBetween: 72,
            loop: true,
            loopedSlides: 6,
            speed: 1000,
            effect: "slide",
            grabCursor: false,
            allowTouchMove: true,
            slideToClickedSlide: true,
            watchSlidesProgress: true,
            roundLengths: true,
            resistanceRatio: 0.65,
            navigation: {
                prevEl: prev,
                nextEl: next
            },
            autoplay: {
                delay: 2200,
                disableOnInteraction: true,
                pauseOnMouseEnter: true
            },
            breakpoints: {
                0: { spaceBetween: 36 },
                760: { spaceBetween: 56 },
                1100: { spaceBetween: 72 }
            },
            rtl: isRtl
        });
        root.setAttribute("data-lead-swiper", "1");
        window.addEventListener("load", function () {
            swiper.update();
        });
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", init);
    } else {
        init();
    }
})();
