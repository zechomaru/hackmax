class ReserveController < ApplicationController
	def index

	end
	def show
		@show = Show.find(params[:id]).theater.seats

		#theater = show.theater
		#theater_id = theater.id
		#@seats = Seat.where(theater_id: theater_id)		
	end
	def create
		@reserve = Reserve.new
		reserve_param = params[:reserve]
		@movie.title = movie_param['title']
		if @reserve.save
		  redirect_to admin_movie_path
		else
		  render 'new'
		end
	end

	def ocupado (seat_id, show_id)
    reserve = Reserve.joins(:seat).where(seat_id: seat_id).where(show_id: show_id)
    !reserve.empty?
  	end

private
	def check_available(id_show)
		@show = Show.find(params[:id])
		@show.theater.quantity
	end
	  def show_params
	    params.require(:show).permit(:id)
	  end
end
