class MovieController < ApplicationController
	def new
		@movie = Movie.new
	end

	def create	
		@movie = Movie.new
		movie_param = params[:movie]
		@movie.title = movie_param['title']
		@movie.genero = movie_param['genero']
		@movie.lenguage = movie_param['lenguage']
		@movie.duration = movie_param['duration']
		@movie.summary = movie_param['summary']
		@movie.classification = movie_param['classification']
		@movie.subtitle = movie_param['subtitle']
		@movie.release_date = movie_param['release_date']
		@movie.ext = movie_param['ext']
		if @movie.save
		  redirect_to admin_movie_path
		else
		  render 'new'
		end
	end
	def show
	    @movies = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])
	end



	def update
	  @movie = Movie.find(params[:id])
	 
	  @movie.update(movie_params)
	  redirect_to admin_movie_path
	end
	
	def destroy
	  @movie = Movie.find(params[:id])
	  @movie.destroy
	
	  redirect_to admin_movie_path
	end




	private
	  def movie_params
	    params.require(:movie).permit(:title, :genero, :lenguage, :subtitle, :duration, :release_date, :summary, :classification, :ext)
	  end
end
