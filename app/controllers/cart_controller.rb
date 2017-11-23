class CartController < ApplicationController
  def index
  	@product = Product.first
  end

  def add
  end

  def remove
  end
end
