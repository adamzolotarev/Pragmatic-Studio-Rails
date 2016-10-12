class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # @movies = Movie.limit(1)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    movie_params = params.require(:movie).permit(:title, :description, :rating,
                                                 :released_on, :total_gross)
    redirect_to @movie
    @movie.update(movie_params)
  end
end
