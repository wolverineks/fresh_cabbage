class LikesController < ApplicationController
  before_action :set_review, only: [:create]
  before_action :set_movie, only: [:create]
  before_action :set_reviews, only: [:create]

  def create
    @like = Like.create(review: @review, user: current_user)
    if request.xhr?
      if @like.save
        @count = @like.review.likes.size
        redirect_to @movie
      else
        @count = @like.review.likes.size
        redirect_to @movie
      end
    else
      if @like.save
        @count = @like.review.likes.size
        redirect_to @movie
      else
        @count = @like.review.likes.size
        redirect_to @movie
      end
    end

  end




  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def set_user
    @user = User.find(current_user.id)
  end

  def set_movie
    @movie = @review.movie
  end

  def set_reviews
    @reviews = @movie.reviews
  end

end
