class CartController < ApplicationController
  before_action :cart_session

  def index
  	
  	@cart = session[:cart]
  	@products = Product.where(:id => session[:cart].keys)
  
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
end
