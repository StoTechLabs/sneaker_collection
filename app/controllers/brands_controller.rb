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
			flash[:notice] = "Brand Added!!!"
			redirect_to('/brands')
		else
			render('brands/new.html.erb')
		end
	end

	def show
		@brand = Brand.find(params[:id])
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def update
		@brand = Brand.find(params[:id])
		if @brand.update(params[:new_brand])
      redirect_to("/brands/#{@brand.id}")
    else
      render("brands/edit.html.erb")
    end
	end

	def delete
    @brand = Brand.find(params[:id])
  end

  def destroy
  	@brand = Brand.find(params[:id])
  	@brand.destroy
  	@brands = Brand.all
  	render('brands/index.html.erb')
  end


end