class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)

    if @review.save
      redirect_to movie_path(@movie)
    else
      render "movies/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end

end