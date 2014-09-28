class BrandsController < ApplicationController
	def index
		@brands = Brand.all
		render('brands/index.html.erb')
	end 

	def new 
		@brand = Brand.new
	end

	def create
		@brand = Brand.new(params[:new_brand])
		if @brand.save
			flash[:notice] = "Brand Added"
			redirect_to('/brands')
		else
			render('brands/new.html.erb')
		end
	end


end