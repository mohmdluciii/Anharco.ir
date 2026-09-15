$(document).ready(function() {
    if ($(window).width() > 785) {
        var scroll_start = 0;
        var startchange = $('#test');
        var offset = startchange.offset();
        if (startchange.length) {
            $(document).scroll(function() {

                scroll_start = $(this).scrollTop();
                if (scroll_start > 0) {

                    $(".phoneBox").css('display', 'none');
                    $("#test").css('z-index', '100000000');
                    $("#test").css('box-shadow', '0px 2px 5px #c1c1c1');

                } else {
                    $("#oLogo").css('width', '');
                    $(".phoneBox").css('display', 'inline-block');
                    $("#test").css('box-shadow', '0px 2px 5px #c1c1c1');
                }
            });
        }
    }

});