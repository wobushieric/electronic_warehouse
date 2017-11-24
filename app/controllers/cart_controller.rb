class CartController < ApplicationController
  def index
  	@product = Product.first
  	session[:product_id] = @product.id
  end

  def add
  end

  def remove
  end
end
