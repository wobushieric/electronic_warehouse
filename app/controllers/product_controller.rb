class ProductController < ApplicationController
	def home
		@rand_product = Product.order("RANDOM()").limit(4)
		render json: { :products => @rand_product}
	end
end
