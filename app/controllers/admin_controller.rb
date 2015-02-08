class AdminController < ApplicationController
  def index
  	@moviesCount = Movie.count(:all)
	  @functionsCount = Show.count(:all)
	  @salasCount = Theater.count(:all)
	#@usersCount = User.count(:all)
	#@invoicesCount = Invoice.count(:all)
  end
  def movie
  	@movies = Movie.all
  end
  def theater
    @theaters = Theater.all
  end
  def show
    @shows = Show.all
    
  end
end
