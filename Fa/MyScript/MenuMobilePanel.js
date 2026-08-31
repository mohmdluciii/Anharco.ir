$(function() {
    $('#barMobileMenu').click(function() {
        $('.memberPanel_LeftBox')
           .animate({
               height: 'toggle'

           });
        $('.memberPanel_LeftBox').css('display', 'block');
    });
});