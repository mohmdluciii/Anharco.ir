var $window = $(window);


var $animation_elements1 = $('.abountBox_Mainpage .abountBox_Container .box .rightBox');
function check_if_in_view1() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements1, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view1');
        } else {

        }
    });
}

var $animation_elements2 = $('.abountBox_Mainpage .abountBox_Container .box .leftBox');
function check_if_in_view2() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements2, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view2');
        } else {

        }
    });
}

var $animation_elements4 = $('.Login_MainPage .Login_Container .RightBox');
function check_if_in_view4() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements4, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view3');
        } else {

        }
    });
}


var $animation_elements5 = $('.Login_MainPage .Login_Container .LeftBox .picBox');
function check_if_in_view5() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements5, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view4');
        } else {

        }
    });
}


var $animation_elements6 = $('.Gallery_MainPage .topBox');
function check_if_in_view6() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements6, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view5');
        } else {

        }
    });
}

var $animation_elements7 = $('.Gallery_MainPage .bottomBox');
function check_if_in_view7() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements7, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view6');
        } else {

        }
    });
}

var $animation_elements8 = $('.Contact_MainPage .Contact_Container .rightBox');
function check_if_in_view8() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements8, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view7');
        } else {

        }
    });
}

var $animation_elements9 = $('.Contact_MainPage .Contact_Container .leftBox');
function check_if_in_view9() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements9, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view9');
        } else {

        }
    });
}

var $animation_elements10 = $('.footer_mainPage .footer_Container .rightBox');
function check_if_in_view10() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements10, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view10');
        } else {

        }
    });
}

var $animation_elements11 = $('.footer_mainPage .footer_Container .leftBox');
function check_if_in_view11() {
    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements11, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            $element.addClass('view11');
        } else {

        }
    });
}


var flg_first = 0
var $animation_elements3 = $('.boxAmar');
function check_if_in_view3() {


    var window_height = $window.height();
    var window_top_position = $window.scrollTop();
    var window_bottom_position = (window_top_position + window_height);

    $.each($animation_elements3, function() {
        var $element = $(this);
        var element_height = $element.outerHeight();
        var element_top_position = $element.offset().top;
        var element_bottom_position = (element_top_position + element_height);

        //check to see if this current container is within viewport
        if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
            if (flg_first == 0) {
                flg_first = 1;
                initTimer_fn();
            }
        } else {

        }
    });



}


$window.on('scroll resize', check_if_in_view1);
$window.on('scroll resize', check_if_in_view2);
$window.on('scroll resize', check_if_in_view3);
$window.on('scroll resize', check_if_in_view4);
$window.on('scroll resize', check_if_in_view5);
$window.on('scroll resize', check_if_in_view6);
$window.on('scroll resize', check_if_in_view7);
$window.on('scroll resize', check_if_in_view8);
$window.on('scroll resize', check_if_in_view9);
$window.on('scroll resize', check_if_in_view10);
$window.on('scroll resize', check_if_in_view11);
$window.trigger('scroll');