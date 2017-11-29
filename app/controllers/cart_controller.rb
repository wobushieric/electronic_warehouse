class CartController < ApplicationController

  GST_RATE = 0.05
  before_action :cart_session

  def index
  	@products = Product.where(:id => session[:cart].keys)

    if user_signed_in?
      @address = CustAddress.where(:user_id => current_user.id).first

      subtotal = 0

      pst_rate = Province.where(:id => @address.province_id).first.tax_rate

      if session[:cart].length >= 1
        session[:cart].each do |product_id, qty|
          price = Product.where(:id => product_id.to_i).first.price
          subtotal += price * qty.to_i
        end
      end

      @subtotal = currency(subtotal)
      @pst_amount = currency((subtotal * pst_rate).round(2))
      @gst_amount = currency((subtotal * GST_RATE).round(2))
      @grand_total = currency((subtotal * (1 + pst_rate + GST_RATE)).round(2))

    end

  end

  def add_remove
  	if params[:qty].eql? 0.to_s
  		# Remove item from cart
  		session[:cart].delete(params[:product_id])
  	else
  		# update qty of item in cart
  		session[:cart][params[:product_id]] = params[:qty].to_s
  	end

  	redirect_to cart_path

  end

  def cart_session
  	if session[:cart].nil?
  		session[:cart] = Hash.new
  	end
  end

  def currency(amount)
    format('$ %.2f', amount)
  end
end
