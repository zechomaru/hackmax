class TheaterController < ApplicationController
	def new
		@theater = Theater.new
	end

	def create	
		@theater = Theater.new
		theater_param = params[:theater]
		@theater.name = theater_param['name']
		@theater.quantity = theater_param['quantity']
		if @theater.save
		  redirect_to admin_theater_path
		else
		  render 'new'
		end
	end
	def show
	    @theaters = Theater.find(params[:id])
	end

	def edit
		@theater = Theater.find(params[:id])
	end



	def update
	  @theater = Theater.find(params[:id])
	 
	  @theater.update(theater_params)
	  redirect_to admin_theater_path
	end
	
	def destroy
	  @theater = Theater.find(params[:id])
	  @theater.destroy
	
	  redirect_to admin_theater_path
	end




	private
	  def theater_params
	    params.require(:theater).permit(:name, :quantity)
	  end
end
