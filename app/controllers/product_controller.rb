class ProductController < ApplicationController
	def home
		@rand_product = Product.order("RANDOM()").limit(4)
	end

	def products
		@all_categories = Category.all

		if (params[:key].blank? && params[:category].blank?) # no search params
			@categories = Category.all
			@products = Product.all.page(params[:page]).per(9)
		elsif (params[:key].blank? && !params[:category].blank?)
			@categories = Category.where(id: params[:category])
			@products = Product.where(category_id: params[:category]).page(params[:page]).per(9)
		elsif (!params[:key].blank? && params[:category].blank?)
			@categories = Category.all
			@products = Product.where('name LIKE (?) OR description LIKE (?)', "%#{params[:key]}%", "%#{params[:key]}%").page(params[:page]).per(9)
		elsif (!params[:key].blank? && !params[:category].blank?)
			@categories = Category.where(id: params[:category])
			@products = Product.where(category_id: params[:category]).where('name LIKE (?) OR description LIKE (?)', "%#{params[:key]}%", "%#{params[:key]}%").page(params[:page]).per(9)
		end

		if (!params[:sort].blank?)
			if ( params[:sort].eql? "create")
				@products = @products.order('created_at DESC')
			elsif ( params[:sort].eql? "update")
				@products = @products.order('updated_at DESC')
			end	
		end
	end

	def details
		@product = Product.find(params[:product_id])
	end
end
