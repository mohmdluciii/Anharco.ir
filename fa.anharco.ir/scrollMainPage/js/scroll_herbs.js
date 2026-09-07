$(document).ready(function () {
    var myHeight;
    $('.element').each(function (i) {
        var myElement = $(this);
        myElement.data('params', {
            top1: $(this).css('top'),
            x1: $(this).css('left')
        });
        switch (i) {
        case 0:
            myElement.data('params', {
                top0: -1300,
                x0: -2600,
                top1: $(this).css('top'),
                x1: $(this).css('left')
            });
            break;
        case 1:
            myElement.data('params', {
                top0: 0,
                x0: -930,
                top1: $(this).css('top'),
                x1: $(this).css('left')
            });
            break;
        case 2:
            myElement.data('params', {
                top0: 280,
                x0: -1030,
                top1: $(this).css('top'),
                x1: $(this).css('left')
            });
            break;
        case 3:
            myElement.data('params', {
                top0: -1200,
                x0: -2330,
                top1: $(this).css('top'),
                x1: $(this).css('right')
            });
            break;
        case 4:
            myElement.data('params', {
                top0: 250,
                x0: -530,
                top1: $(this).css('top'),
                x1: $(this).css('right')
            });
            break;
        }
    });

    function init() {
        myHeight = $(window).height();
        $('header').css('height', myHeight - 300);
        $('section').not('.certSlider, .Certificates_Container section').css('min-height', Math.max(myHeight / 2 + 250, 600));
    }
    $(window).scroll(function () {
        var s_max = myHeight / 2 + 450;

        function move(p0, p1, s) {
            return Math.min((-p0 + p1) / s_max * s + p0, p1);
        }
        var scrollTop = parseInt($(window).scrollTop());
        $('.element').each(function (i) {
            var myX = move($(this).data('params').x0, parseInt($(this).data('params').x1), scrollTop),
                myY = move($(this).data('params').top0, parseInt($(this).data('params').top1), scrollTop);
            if (i < 3) {
                $(this).stop().css({
                    left: myX + 'px',
                    top: myY + 'px'
                })
            } else {
                $(this).stop().css({
                    right: myX + 'px',
                    top: myY + 'px'
                })
            }
        })
    })
    init();
    $(window).resize(function () {
        init();
    });
});

(function () {
    function emptyBg(el) {
        if (!el) {
            return true;
        }
        var bg = (el.style && el.style.backgroundImage) || "";
        return !bg || /TopBanner\/["')\s]*$/i.test(bg) || /url\(["']?["']?\)/i.test(bg);
    }

    function applyFallbacks() {
        var slides = ["s1", "s2", "s3", "s4"];
        var files = [
            "images/Bananer-Anhar-co-no-1.jpg",
            "images/Bananer-Anhar-co-no-2.jpg",
            "images/Bananer-Anhar-co-no-3.jpg",
            "images/Bananer-Anhar-co-no-4.jpg"
        ];
        var i;
        for (i = 0; i < slides.length; i++) {
            var el = document.getElementById(slides[i]);
            if (el && emptyBg(el)) {
                el.style.backgroundImage = "url('" + files[i] + "')";
                el.style.backgroundSize = "cover";
                el.style.backgroundPosition = "center";
            }
        }

        var picFiles = [
            "scrollMainPage/images/rosemary1.jpg",
            "scrollMainPage/images/coriander1.jpg",
            "scrollMainPage/images/lemonbalm1.jpg",
            "scrollMainPage/images/basilic1.jpg",
            "scrollMainPage/images/chives1.jpg",
            "images/MainPagePic9.jpg",
            "scrollMainPage/images/rosemary1.jpg",
            "scrollMainPage/images/coriander1.jpg"
        ];
        var imgs = document.querySelectorAll(".picBoxMainPage img");
        for (i = 0; i < imgs.length; i++) {
            (function (img, src) {
                var current = img.getAttribute("src") || "";
                if (!current || /\/$/.test(current)) {
                    img.src = src;
                }
                img.onerror = function () {
                    img.onerror = null;
                    img.src = src;
                };
            })(imgs[i], picFiles[i % picFiles.length]);
        }

        if (typeof window.hidden_Mobile_version === "undefined" || !window.hidden_Mobile_version) {
            window.hidden_Mobile_version = { value: (window.innerWidth < 770) ? "1" : "0" };
        }
        bindLanguageSwitch();
        bindMenuOverlay();
        bindValuesScroll();
        bindScrollGuard();
    }

    /* ---- Scroll guard: self-heals a "frozen" page.
       If stale cached CSS (or a bad rule) clamps html/body into position:fixed
       or hands scrolling to an inner container, the window stops scrolling and
       the page appears stuck in a frame. This guard detects both cases and
       repairs them at runtime — even when the bad CSS comes from browser cache
       that a version bump cannot reach. */
    function bindScrollGuard() {
        if (window.__anharScrollGuard) {
            return;
        }
        window.__anharScrollGuard = true;

        function docScrollable() {
            return document.documentElement.scrollHeight > window.innerHeight + 4;
        }

        function windowLooksLocked() {
            var de = document.documentElement;
            var cs = window.getComputedStyle ? window.getComputedStyle(de) : null;
            if (!cs) {
                return false;
            }
            var bs = document.body && window.getComputedStyle ? window.getComputedStyle(document.body) : null;
            if (cs.position === "fixed" || (bs && bs.position === "fixed")) {
                return true;
            }
            if (docScrollable() && cs.overflowY === "hidden") {
                return true;
            }
            var h = parseFloat(cs.height);
            if (docScrollable() && cs.height !== "auto" && !isNaN(h) && h <= window.innerHeight + 2) {
                return true;
            }
            return false;
        }

        function unlockWindow() {
            var de = document.documentElement;
            de.style.setProperty("position", "static", "important");
            de.style.setProperty("overflow-y", "auto", "important");
            de.style.setProperty("overflow-x", "hidden", "important");
            de.style.setProperty("height", "auto", "important");
            de.style.setProperty("max-height", "none", "important");
            if (document.body) {
                document.body.style.setProperty("position", "static", "important");
                document.body.style.setProperty("overflow", "visible", "important");
                document.body.style.setProperty("height", "auto", "important");
                document.body.style.setProperty("max-height", "none", "important");
            }
        }

        function stealBackInnerScroller() {
            if (!document.body || !window.getComputedStyle) {
                return;
            }
            if (docScrollable()) {
                return;
            }
            var all = document.body.getElementsByTagName("*");
            var scroller = null;
            var maxH = 0;
            var i, el, ecs, gap, key;
            for (i = 0; i < all.length; i++) {
                el = all[i];
                ecs = window.getComputedStyle(el);
                if (!ecs || (ecs.overflowY !== "auto" && ecs.overflowY !== "scroll")) {
                    continue;
                }
                gap = el.scrollHeight - el.clientHeight;
                if (gap > maxH) {
                    maxH = gap;
                    scroller = el;
                }
            }
            if (scroller && maxH > 200) {
                key = (scroller.className || "") + " " + (scroller.id || "");
                if (!/certViewer|slick|menuBoxContainer|searchMainContainer|mobileMenu|cmb_select/i.test(key)) {
                    scroller.style.setProperty("overflow", "visible", "important");
                    scroller.style.setProperty("max-height", "none", "important");
                    scroller.style.setProperty("height", "auto", "important");
                    scroller.style.setProperty("position", "static", "important");
                }
            }
        }

        function repair() {
            if (windowLooksLocked()) {
                unlockWindow();
            }
        }

        var t = false;
        function onScroll() {
            if (t) {
                return;
            }
            t = true;
            window.setTimeout(function () {
                repair();
                t = false;
            }, 300);
        }

        window.addEventListener("scroll", onScroll, false);
        window.addEventListener("resize", onScroll, false);
        window.addEventListener("wheel", onScroll, false);
        window.addEventListener("touchmove", onScroll, false);
        window.setTimeout(function () {
            repair();
            stealBackInnerScroller();
        }, 800);
        window.setTimeout(function () {
            repair();
            stealBackInnerScroller();
        }, 3000);
    }

    function bindMenuOverlay() {
        var box = document.getElementById("obj_backMenuBox");
        var menu = document.getElementById("cssmenu");
        var hideTimer = null;

        function showMenu() {
            if (hideTimer) {
                window.clearTimeout(hideTimer);
                hideTimer = null;
            }
            if (box) {
                box.classList.add("menuBoxContainerShow");
            }
        }

        function hideMenu() {
            if (hideTimer) {
                window.clearTimeout(hideTimer);
            }
            hideTimer = window.setTimeout(function () {
                if (box) {
                    box.classList.remove("menuBoxContainerShow");
                }
            }, 80);
        }

        window.showBoxBackMenu = showMenu;
        window.hideBoxBackMenu = hideMenu;

        if (menu) {
            menu.addEventListener("mouseenter", showMenu);
            menu.addEventListener("mouseleave", hideMenu);
        }
        document.addEventListener("click", function (ev) {
            var target = ev.target;
            if (menu && box && !menu.contains(target) && !box.contains(target)) {
                hideMenu();
            }
        });
    }

    function bindValuesScroll() {
        var box = document.querySelector(".adsContainer");
        if (!box) {
            return;
        }
        var sticky = box.querySelector(".adsValuesSticky");
        if (!sticky) {
            sticky = document.createElement("div");
            sticky.className = "adsValuesSticky";
            while (box.firstChild) {
                sticky.appendChild(box.firstChild);
            }
            box.appendChild(sticky);
        }
        box.classList.remove("valuesInView");
        var items = box.querySelectorAll("#tAds1, #tAds2, #tAds3, #tAds4, #tAds5");
        if (!items.length) {
            return;
        }

        var colors = ["#d8f3ff", "#4fc3f7", "#009DD9", "#0066B2", "#000000"];
        var shown = [];
        var i;
        for (i = 0; i < items.length; i++) {
            shown[i] = 1;
            items[i].style.setProperty("opacity", "1", "important");
            items[i].style.setProperty("color", colors[i] || "#000000", "important");
            items[i].style.setProperty("display", "block", "important");
            items[i].style.setProperty("visibility", "visible", "important");
        }

        function clamp(n, a, b) {
            if (n < a) {
                return a;
            }
            if (n > b) {
                return b;
            }
            return n;
        }

        function update() {
            var vh = window.innerHeight || document.documentElement.clientHeight || 800;
            var rect = box.getBoundingClientRect();
            var mid = rect.top + rect.height / 2;
            var screenMid = vh / 2;
            var t;
            if (mid >= screenMid) {
                var enterFrom = vh + rect.height / 2;
                t = clamp((mid - screenMid) / (enterFrom - screenMid), 0, 1);
            } else {
                var exitTo = -rect.height / 2;
                t = -clamp((screenMid - mid) / (screenMid - exitTo), 0, 1);
            }
            var mag = Math.abs(t);
            mag = mag * mag * (3 - 2 * mag);
            t = (t < 0 ? -1 : 1) * mag;
            var rtl = (document.documentElement.getAttribute("dir") || "") === "rtl";
            var n;
            for (n = 0; n < items.length; n++) {
                shown[n] += (t - shown[n]) * 0.4;
                var dir = (n % 2 === 0) ? 1 : -1;
                if (rtl) {
                    dir = -dir;
                }
                var span = Math.max(items[n].offsetWidth, (window.innerWidth || box.clientWidth) * 0.92);
                var x = shown[n] * dir * span;
                items[n].style.setProperty("transform", "translateX(" + Math.round(x) + "px)", "important");
            }
        }

        var ticking = false;
        function onScroll() {
            if (ticking) {
                return;
            }
            ticking = true;
            if (window.requestAnimationFrame) {
                window.requestAnimationFrame(function () {
                    update();
                    ticking = false;
                });
            } else {
                update();
                ticking = false;
            }
        }

        if (window.addEventListener) {
            window.addEventListener("scroll", onScroll, false);
            window.addEventListener("resize", onScroll, false);
            document.addEventListener("scroll", onScroll, false);
        }
        update();
    }

    function langFromHref(href) {
        href = (href || "").toLowerCase();
        if (href.indexOf("fa.anharco") !== -1 || href.indexOf("fa.anharepc") !== -1 || href.indexOf(":8081") !== -1) {
            return "fa";
        }
        if (href.indexOf("ar.anharco") !== -1 || href.indexOf("ar.anharepc") !== -1 || href.indexOf(":8082") !== -1) {
            return "ar";
        }
        if (href.indexOf("anharepc.ir") !== -1 || href.indexOf("anharco.ir") !== -1 || href.indexOf(":8080") !== -1) {
            return "en";
        }
        return "";
    }

    function bindLanguageSwitch() {
        return;
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", applyFallbacks);
    } else {
        applyFallbacks();
    }
})();
