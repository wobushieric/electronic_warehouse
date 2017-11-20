class ProductController < ApplicationController
	def home
		@rand_product = Product.order("RANDOM()").limit(4)
	end

	def products		
		@categories = Category.all
		@products = Product.all.page(params[:page]).per(9)
	end

	def product_by_category
	end
end
