$(function() {
    $('#SearchMenu').click(function() {
        $('#searchBox')
           .animate({

               width: 'toggle'
           });
        $('#searchBox').css('z-index', '10000000000');
    });

});

$(function() {
    $('#LoginhMenu').click(function() {
        $('#LoginBox')
           .animate({
               height: 'toggle'

           });
        $('#LoginBox').css('z-index', '10000000000');
    });
});