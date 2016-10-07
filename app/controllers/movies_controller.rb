class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # @movies = Movie.limit(1)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
