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

  	$(this).find(".item-price").text("$ " + (qty * price).toFixed(2));

  	subtotal += qty * price;
  })

  $(".sub_total").text("$ " + subtotal.toFixed(2));
  $(".gst_amount").text((subtotal * MB_GST).toFixed(2));
  $(".pst_amount").text((subtotal * MB_PST).toFixed(2));
  $(".est_amount").text("$ " + (subtotal * (1 + MB_GST + MB_PST)).toFixed(2));
};

$(document).on('turbolinks:load', ready);