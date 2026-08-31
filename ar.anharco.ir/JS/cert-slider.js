$(function () {
    var $slider = $(".certSlider");
    if (!$slider.length) {
        return;
    }
    if ($slider.hasClass("slick-initialized")) {
        try {
            $slider.slick("unslick");
        } catch (e) { }
    }
    var $wrap = $slider.closest(".Certificates_Container");
    if (!$wrap.length) {
        $wrap = $slider.parent();
    }
    $wrap.find(".certArrow").remove();
    var isRtl = ($("html").attr("dir") || "").toLowerCase() === "rtl";
    var prevIcon = isRtl ? "fa-chevron-right" : "fa-chevron-left";
    var nextIcon = isRtl ? "fa-chevron-left" : "fa-chevron-right";
    $wrap.append('<button type="button" class="certArrow certArrowPrev" aria-label="Previous"><i class="fa ' + prevIcon + '"></i></button>');
    $wrap.append('<button type="button" class="certArrow certArrowNext" aria-label="Next"><i class="fa ' + nextIcon + '"></i></button>');
    var width = $(window).width();
    var show = 3;
    if (width < 700) {
        show = 1;
    } else if (width < 1050) {
        show = 2;
    }
    $slider.slick({
        dots: true,
        infinite: true,
        centerMode: false,
        slidesToShow: show,
        slidesToScroll: 1,
        adaptiveHeight: false,
        arrows: true,
        prevArrow: $wrap.find(".certArrowPrev"),
        nextArrow: $wrap.find(".certArrowNext"),
        rtl: false,
        speed: 450
    });
    setTimeout(function () {
        if ($slider.hasClass("slick-initialized")) {
            $slider.slick("slickGoTo", 0, true);
            $slider.slick("setPosition");
        }
    }, 250);

    if (!$("#certViewer").length) {
        $("body").append(
            '<div id="certViewer" class="certViewer" hidden>' +
                '<button type="button" class="certViewerClose" aria-label="Close"><i class="fa fa-times"></i></button>' +
                '<button type="button" class="certViewerNav certViewerPrev" aria-label="Previous"><i class="fa ' + prevIcon + '"></i></button>' +
                '<img class="certViewerImg" alt="" />' +
                '<button type="button" class="certViewerNav certViewerNext" aria-label="Next"><i class="fa ' + nextIcon + '"></i></button>' +
                '<p class="certViewerCap"></p>' +
            '</div>'
        );
    }
    var $viewer = $("#certViewer");
    var $viewerImg = $viewer.find(".certViewerImg");
    var $viewerCap = $viewer.find(".certViewerCap");
    var items = [];
    var index = 0;

    function collectItems() {
        var list = [];
        var seen = {};
        $slider.find(".boxCertificates img").each(function () {
            var src = this.getAttribute("src") || "";
            if (!src || seen[src]) {
                return;
            }
            seen[src] = true;
            var title = $(this).closest(".boxCertificates").find(".titleCertificates p").first().text() || this.getAttribute("alt") || "";
            list.push({ src: src, title: $.trim(title) });
        });
        return list;
    }

    function showItem(i) {
        if (!items.length) {
            return;
        }
        index = (i + items.length) % items.length;
        $viewerImg.attr("src", items[index].src);
        $viewerImg.attr("alt", items[index].title);
        $viewerCap.text(items[index].title);
    }

    function openViewer(src) {
        items = collectItems();
        var i = 0;
        var n;
        for (n = 0; n < items.length; n++) {
            if (items[n].src === src) {
                i = n;
                break;
            }
        }
        showItem(i);
        $viewer.removeAttr("hidden").addClass("is-open");
        $("body").addClass("certViewerOpen");
    }

    function closeViewer() {
        $viewer.attr("hidden", "hidden").removeClass("is-open");
        $("body").removeClass("certViewerOpen");
    }

    $slider.on("click", ".boxCertificates", function (e) {
        if ($(e.target).closest("a, button").length) {
            return;
        }
        var src = $(this).find("img").attr("src");
        if (src) {
            openViewer(src);
        }
    });

    $viewer.on("click", function (e) {
        if (e.target === this) {
            closeViewer();
        }
    });
    $viewer.find(".certViewerClose").on("click", closeViewer);
    $viewer.find(".certViewerPrev").on("click", function (e) {
        e.stopPropagation();
        showItem(index - 1);
    });
    $viewer.find(".certViewerNext").on("click", function (e) {
        e.stopPropagation();
        showItem(index + 1);
    });
    $(document).on("keydown.certViewer", function (e) {
        if (!$viewer.hasClass("is-open")) {
            return;
        }
        if (e.keyCode === 27) {
            closeViewer();
        } else if (e.keyCode === 37) {
            showItem(isRtl ? index + 1 : index - 1);
        } else if (e.keyCode === 39) {
            showItem(isRtl ? index - 1 : index + 1);
        }
    });
});
