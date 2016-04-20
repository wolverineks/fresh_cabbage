class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]
  before_action :set_movie, only: [:index]

  def index
    @reviews = @movie.reviews
  end

  def show
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.reviewer = current_user
    @review.movie = @movie

    redirect_to root_path unless @review.reviewer == current_user

    if params[:commit] == "publish"
      @review.published_on = DateTime.now
    end

    if @review.save
      redirect_to movie_review_path(@movie, @review)
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])

    redirect_to root_path unless @review.reviewer == current_user
  end

  def update
    @review = Review.find(params[:id])
    @movie = Movie.find(params[:movie_id])

    redirect_to root_path unless @review.reviewer == current_user

    if params[:commit] == "publish"
      @review.published_on = DateTime.now
    end

    if @review.update(review_params)
      redirect_to movie_review_path(@movie, @review)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
