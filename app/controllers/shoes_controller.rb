class ShoesController < ApplicationController
	def index
		@shoes = Shoe.all
		render('shoes/index.html.erb')
	end 

	def new 
		@shoe = Shoe.new
	end

	def create
		@shoe = Shoe.new(params[:new_shoe])
		if @shoe.save
			flash[:notice] = "shoe Added"
			redirect_to('/shoes')
		else
			render('shoes/new.html.erb')
		end
	end

	def show
		@shoe = Shoe.find(params[:id])
	end

	def edit
		@shoe = Shoe.find(params[:id])
	end

	def update
		@shoe = Shoe.find(params[:id])
		if @shoe.update(params[:update_shoe])
      redirect_to("/shoes/#{@shoe.id}")
    else
      render("shoes/edit.html.erb")
    end
	end

	def delete
    @shoe = Shoe.find(params[:id])
  end

  def destroy
  	@shoe = Shoe.find(params[:id])
  	@shoe.destroy
  	@shoes = Shoe.all
  	render('shoes/index.html.erb')
  end


end