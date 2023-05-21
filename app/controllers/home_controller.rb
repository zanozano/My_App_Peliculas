class HomeController < ApplicationController
   def index
    @movies = Movie.all
    @series = Serie.all
    @documentaries = Documentary.all
  end

  def show
  end
end
