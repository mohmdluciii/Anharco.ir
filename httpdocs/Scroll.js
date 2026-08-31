$(document).ready(function() {


    //Check to see if the window is top if not then display button


    //Click event to scroll to top
    $('.scrollToTop').click(function() {
        $('html, body').animate({ scrollTop: 0 }, 1000);
        return false;
    });




    $("#cmb_select_Gallery").change(function() {
        var amount = $(this).find('option:selected').val();

        if (amount == 0) {
            $('html, body').animate({
                scrollTop: $("#p0").offset().top
            }, 2000);
        }

        if (amount == 1) {
            $('html, body').animate({
                scrollTop: $("#p1").offset().top
            }, 2000);
        }

        if (amount == 2) {
            $('html, body').animate({
                scrollTop: $("#p2").offset().top
            }, 2000);
        }

        if (amount == 3) {
            $('html, body').animate({
                scrollTop: $("#p3").offset().top
            }, 2000);
        }

        if (amount == 4) {
            $('html, body').animate({
                scrollTop: $("#p4").offset().top
            }, 2000);
        }

        if (amount == 5) {
            $('html, body').animate({
                scrollTop: $("#p5").offset().top
            }, 2000);
        }

        if (amount == 6) {
            $('html, body').animate({
                scrollTop: $("#p6").offset().top
            }, 2000);
        }

        if (amount == 7) {
            $('html, body').animate({
                scrollTop: $("#p7").offset().top
            }, 2000);
        }

        if (amount == 8) {
            $('html, body').animate({
                scrollTop: $("#p8").offset().top
            }, 2000);
        }

        if (amount == 9) {
            $('html, body').animate({
                scrollTop: $("#p9").offset().top
            }, 2000);
        }

        if (amount == 10) {
            $('html, body').animate({
                scrollTop: $("#p10").offset().top
            }, 2000);
        }

        if (amount == 11) {
            $('html, body').animate({
                scrollTop: $("#p11").offset().top
            }, 2000);
        }
       

    });

});