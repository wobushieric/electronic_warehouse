class ProductController < ApplicationController
	def home
		@rand_product = Product.order("RANDOM()").limit(4)
	end

	def products
		if(!params[:key].nil? && !params[:category].nil?)
			@categories = Category.all
			@products = Product.where(category_id: params[:category]).page(params[:page]).per(9)
		end
	end

	def product_by_category
	end
end
