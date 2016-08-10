class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index
    @movies = Movie.all
  end

  def show
    @review = Review.new
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :director, :year, :synopsis, :genre)
  end
end