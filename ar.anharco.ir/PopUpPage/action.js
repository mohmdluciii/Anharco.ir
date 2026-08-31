
function openModal($modal) {
  // Note: fixed elements will also need the margin 
  // adjustment (like a fixed header, if you have one).
  var scrollBarWidth = window.innerWidth - document.body.offsetWidth;
  $('body')
    .css('margin-right', scrollBarWidth)
    .addClass('showing-modal');
  $modal.show();
};

function closeModal($modal) {
    $('body')
      .css('margin-right', '')
      .removeClass('showing-modal');
    $modal.hide();
};

// I prefer to generate and dynamically insert the modal
// but for this demonstration it is already in the markup.
var $modal = $('#modal');

// Clicking outside the inner modal content should close it.
$modal
	.click(function () {
		closeModal($modal);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});

// Open the modal when open button is pressed.
$('#OpenModal1').click(function (event) {

  event.preventDefault();
  openModal($modal);
});

var $modal1 = $('#modal1');

// Clicking outside the inner modal content should close it.
$modal1
	.click(function () {
		closeModal($modal1);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});


var $modal2 = $('#modal2');

// Clicking outside the inner modal content should close it.
$modal2
	.click(function () {
		closeModal($modal2);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});


var $modal3 = $('#modal3');

// Clicking outside the inner modal content should close it.
$modal3
	.click(function () {
		closeModal($modal3);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});


var $modal4 = $('#modal4');

// Clicking outside the inner modal content should close it.
$modal4
	.click(function () {
		closeModal($modal4);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});


var $modal5 = $('#modal5');

// Clicking outside the inner modal content should close it.
$modal5
	.click(function () {
		closeModal($modal5);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});


var $modal6 = $('#modal6');

// Clicking outside the inner modal content should close it.
$modal6
	.click(function () {
		closeModal($modal6);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});


var $modal7 = $('#modal7');

// Clicking outside the inner modal content should close it.
$modal7
	.click(function () {
		closeModal($modal7);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});
	
	
	var $modal8 = $('#modal8');

// Clicking outside the inner modal content should close it.
$modal8
	.click(function () {
		closeModal($modal8);
	})
  .find('.modal-inner').click(function (event) {
  	event.stopPropagation();
	});
	

// Open the modal when open button is pressed.

$('#OpenModal2').click(function (event) {

  event.preventDefault();
  openModal($modal1);
});


// Open the modal when open button is pressed.

$('#OpenModal3').click(function (event) {

  event.preventDefault();
  openModal($modal2);
});

$('#OpenModal4').click(function (event) {

  event.preventDefault();
  openModal($modal3);
});


$('#OpenModal5').click(function (event) {

  event.preventDefault();
  openModal($modal4);
});


$('#OpenModal6').click(function (event) {

  event.preventDefault();
  openModal($modal5);
});

$('#OpenModal7').click(function (event) {

  event.preventDefault();
  openModal($modal6);
});

$('#OpenModal8').click(function (event) {

  event.preventDefault();
  openModal($modal7);
});


$('#OpenModal9').click(function (event) {

  event.preventDefault();
  openModal($modal2);
});




$('#OpenModal11').click(function (event) {

  event.preventDefault();
  openModal($modal4);
});


$('#OpenModal12').click(function (event) {

  event.preventDefault();
  openModal($modal5);
});

$('#OpenModal13').click(function (event) {

  event.preventDefault();
  openModal($modal6);
});

$('#OpenModal14').click(function (event) {

  event.preventDefault();
  openModal($modal7);
});

$('#OpenModal20').click(function (event) {

  event.preventDefault();
  openModal($modal8);
});
