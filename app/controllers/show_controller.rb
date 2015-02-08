class ShowController < ApplicationController
	def new
		@show = Show.new
	end
	def create
		
		@show = Show.new
		show_param = params[:show]
		
		@show.date_show = show_param['date_show']
		@show.time_show = show_param['time_show']
		@show.movie_id = show_param['movie_id']
		@show.theater_id = show_param['theater_id']

		if @show.save
		  	redirect_to admin_show_path
		else
		  render 'new'
		end
		 
	end
	def show
	    @show = Show.find(params[:id])
	end

	def edit
		@show = Show.find(params[:id])
	end



	def update
	  @show = Show.find(params[:id])
	 
	  @show.update(show_params)
	  redirect_to admin_show_path
	end
	
	def destroy
	  @show = Show.find(params[:id])
	  @show.destroy
	
	  redirect_to admin_show_path
	end

	private
	  def show_params
	    params.require(:show).permit(:date_show, :time_show, :movie_id, :theater_id)
	  end
end
