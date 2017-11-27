var ready;
var qty = 0;
var price = 0;
var subtotal =0;
var estimatedTotal = 0;

var MB_GST = 0.05;
var MB_PST = 0.08;

ready = function() {

  var qty = 0;
  var price = 0;
  var subtotal =0;
  var estimatedTotal = 0;
  var cartItems = $(".cart-item");

  $.each(cartItems, function( index, element){
  	qty = $(this).find(".item-qty").val();
  	price = $(this).find(".item-price").text();
  	console.log(qty);
  	console.log(price);

  	$(this).find(".item-price").text("$ " + (qty * price).toFixed(2));

  	subtotal += qty * price;
  })
};

$(document).on('turbolinks:load', ready);