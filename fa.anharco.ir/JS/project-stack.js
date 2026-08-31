(function () {
    function ready(fn) {
        if (document.readyState === "loading") {
            document.addEventListener("DOMContentLoaded", fn);
        } else {
            fn();
        }
    }

    function labelFor(slide, index) {
        var title = slide.querySelector("p");
        var text = title ? String(title.textContent || "").replace(/\s+/g, " ").trim() : "";
        if (text.length > 48) {
            text = text.substring(0, 48);
        }
        return text || String(index + 1);
    }

    function enableStickyAncestors(el) {
        var node = el;
        while (node && node !== document.body) {
            if (node.className && String(node.className).indexOf("mainScreenLayer") !== -1) {
                node.className += " project-stack-enabled";
            }
            node = node.parentNode;
        }
    }

    function setCoverPhoto(slide, src) {
        if (slide.style.removeProperty) {
            slide.style.removeProperty("background");
        } else {
            slide.style.background = "";
        }
        slide.style.backgroundColor = "#0B2D71";
        slide.style.backgroundImage = "url('" + String(src).replace(/'/g, "\\'") + "')";
        slide.style.backgroundSize = "cover";
        slide.style.backgroundRepeat = "no-repeat";
        slide.style.backgroundPosition = "center center";
        slide.className = slide.className + " project-slide-has-photo";
    }

    function enhance() {
        var host = document.getElementById("projectStackHost");
        var slides = host
            ? host.querySelectorAll(".MessageCEO_Box5Container_Project")
            : document.querySelectorAll(".MessageCEO_Box5Container_Project");
        if (!slides || slides.length < 1) {
            return;
        }

        var wrap = document.createElement("div");
        wrap.className = "project-scroll-stack";
        slides[0].parentNode.insertBefore(wrap, slides[0]);
        enableStickyAncestors(wrap);

        var nav = document.createElement("ol");
        nav.className = "project-stack-nav";
        nav.style.display = "none";

        for (var i = 0; i < slides.length; i++) {
            var slide = slides[i];
            slide.style.zIndex = String(i + 1);

            var img = slide.querySelector("img");
            if (img && img.getAttribute("src")) {
                setCoverPhoto(slide, img.getAttribute("src"));
            }

            var extras = slide.querySelectorAll(".box a.lightbox");
            if (extras.length > 1) {
                var thumbs = document.createElement("div");
                thumbs.className = "project-slide-thumbs";
                for (var t = 1; t < extras.length; t++) {
                    thumbs.appendChild(extras[t]);
                }
                slide.querySelector(".MessageCEO_inner").appendChild(thumbs);
            }

            wrap.appendChild(slide);

            var item = document.createElement("li");
            item.appendChild(document.createTextNode(labelFor(slide, i)));
            item.setAttribute("data-index", String(i));
            nav.appendChild(item);
        }

        document.body.appendChild(nav);

        var items = nav.getElementsByTagName("li");
        function setActive(index) {
            for (var n = 0; n < items.length; n++) {
                items[n].className = n === index ? "is-active" : "";
            }
        }
        setActive(0);

        function onScroll() {
            var mid = window.innerHeight * 0.45;
            var current = 0;
            var wrapRect = wrap.getBoundingClientRect();
            if (wrapRect.top > 90 || wrapRect.bottom < 90) {
                nav.style.display = "none";
            } else {
                nav.style.display = "";
            }
            for (var s = 0; s < slides.length; s++) {
                var rect = slides[s].getBoundingClientRect();
                if (rect.top <= mid) {
                    current = s;
                }
            }
            setActive(current);
        }

        window.addEventListener("scroll", onScroll, false);
        window.addEventListener("resize", onScroll, false);
        onScroll();

        for (var k = 0; k < items.length; k++) {
            items[k].onclick = function () {
                var idx = parseInt(this.getAttribute("data-index"), 10);
                if (slides[idx]) {
                    var start = wrap.getBoundingClientRect().top + (window.pageYOffset || document.documentElement.scrollTop || 0);
                    window.scrollTo(0, start + (idx * window.innerHeight) + 4);
                }
            };
        }
    }

    ready(enhance);
})();
