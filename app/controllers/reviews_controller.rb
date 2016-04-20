class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]
  before_action :set_movie, only: [:index]

  def index
    @reviews = @movie.reviews
  end

  def show

  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
