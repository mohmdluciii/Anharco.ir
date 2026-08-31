(function () {
    function sidePad() {
        var w = window.innerWidth || document.documentElement.clientWidth || 1200;
        if (w >= 1410) {
            return Math.max(32, Math.round((w - 1240) / 2));
        }
        return Math.max(24, Math.round(w * 0.06));
    }

    function isLocalHost() {
        var h = (window.location && window.location.hostname) || "";
        return h === "localhost" || h === "127.0.0.1";
    }

    function pageIsRtl() {
        var html = document.documentElement;
        var dir = ((html.getAttribute("dir") || "") + " " + ((document.body && document.body.getAttribute("dir")) || "")).toLowerCase();
        if (dir.indexOf("rtl") !== -1) {
            return true;
        }
        var lang = (html.getAttribute("lang") || "").toLowerCase();
        return lang === "fa" || lang === "ar" || lang.indexOf("fa-") === 0 || lang.indexOf("ar-") === 0;
    }

    function fillDemo(root) {
        if (!isLocalHost()) {
            return false;
        }
        var n;
        for (n = 1; n <= 6; n++) {
            var card = document.createElement("div");
            card.innerHTML = "<div class='newIndent'><div style='position:relative;top:0;left:0;min-height:220px;background:#004f8a;'></div><div class='innerBoxNews'><div class='boxTextContentNews'><div class='dateBox'>Demo " + n + "</div><div class='titleBoxNews'>News card " + n + "</div></div></div></div>";
            root.appendChild(card);
        }
        return true;
    }

    function prepare(root) {
        if (root.getAttribute("data-news-swiper") === "1") {
            return true;
        }
        var kids = [];
        while (root.firstChild) {
            var node = root.firstChild;
            root.removeChild(node);
            if (node.nodeType === 1) {
                kids.push(node);
            }
        }
        if (!kids.length) {
            fillDemo(root);
            while (root.firstChild) {
                node = root.firstChild;
                root.removeChild(node);
                if (node.nodeType === 1) {
                    kids.push(node);
                }
            }
        }
        if (!kids.length) {
            return false;
        }
        var wrap = document.createElement("div");
        wrap.className = "swiper-wrapper";
        var i;
        for (i = 0; i < kids.length; i++) {
            kids[i].className = ((kids[i].className || "") + " swiper-slide").replace(/^\s+/, "");
            wrap.appendChild(kids[i]);
        }
        root.appendChild(wrap);
        if ((" " + root.className + " ").indexOf(" swiper ") === -1) {
            root.className += " swiper newsSwiper";
        }
        var isRtl = pageIsRtl();
        root.setAttribute("dir", isRtl ? "rtl" : "ltr");
        root.style.direction = isRtl ? "rtl" : "ltr";
        root.setAttribute("data-news-swiper", "1");
        return true;
    }

    function guardHoldClick(root) {
        var startX = 0;
        var startY = 0;
        var startT = 0;
        var suppress = false;
        var HOLD_MS = 300;
        var MOVE_PX = 8;

        function movedEnough(x, y) {
            var dx = x - startX;
            var dy = y - startY;
            return (dx * dx + dy * dy) > (MOVE_PX * MOVE_PX);
        }

        function markHoldOrMove(x, y) {
            if (!startT) {
                return;
            }
            if (movedEnough(x, y) || (Date.now() - startT) >= HOLD_MS) {
                suppress = true;
            }
        }

        root.addEventListener("pointerdown", function (e) {
            if (e.pointerType === "mouse" && e.button !== 0) {
                return;
            }
            startX = e.clientX;
            startY = e.clientY;
            startT = Date.now();
            suppress = false;
        }, true);

        root.addEventListener("pointermove", function (e) {
            if (!e.buttons) {
                return;
            }
            markHoldOrMove(e.clientX, e.clientY);
        }, true);

        function endPointer(e) {
            if (e) {
                markHoldOrMove(e.clientX, e.clientY);
            }
            if (startT && (Date.now() - startT) >= HOLD_MS) {
                suppress = true;
            }
            startT = 0;
        }

        root.addEventListener("pointerup", endPointer, true);
        root.addEventListener("pointercancel", endPointer, true);

        root.addEventListener("click", function (e) {
            if (!suppress) {
                return;
            }
            e.preventDefault();
            e.stopPropagation();
            suppress = false;
        }, true);

        root.addEventListener("dragstart", function (e) {
            e.preventDefault();
            suppress = true;
        }, true);
    }

    function init() {
        var root = document.querySelector(".NewsFirstPage .slider");
        if (!root || typeof Swiper === "undefined") {
            return;
        }
        if (!prepare(root)) {
            return;
        }
        var pad = sidePad();
        var isRtl = pageIsRtl();
        var swiper = new Swiper(root, {
            slidesPerView: "auto",
            slidesPerGroup: 1,
            spaceBetween: 56,
            speed: 1200,
            grabCursor: true,
            watchOverflow: true,
            resistanceRatio: 0.68,
            shortSwipes: true,
            longSwipes: true,
            longSwipesRatio: 0.18,
            longSwipesMs: 240,
            threshold: 8,
            slidesOffsetBefore: pad,
            slidesOffsetAfter: pad,
            followFinger: true,
            preventClicks: true,
            preventClicksPropagation: true,
            simulateTouch: true,
            touchStartPreventDefault: false,
            centeredSlides: false,
            loop: false,
            rewind: false,
            roundLengths: true,
            freeMode: false,
            rtl: isRtl
        });
        guardHoldClick(root);
        var resizeTimer = null;
        window.addEventListener("resize", function () {
            if (resizeTimer) {
                clearTimeout(resizeTimer);
            }
            resizeTimer = setTimeout(function () {
                var nextPad = sidePad();
                swiper.params.slidesOffsetBefore = nextPad;
                swiper.params.slidesOffsetAfter = nextPad;
                swiper.update();
            }, 120);
        });
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
