class LikesController < ApplicationController
  before_action :set_review, only: [:create]
  # before_action :set_count, only: [:create]
  before_action :set_movie, only: [:create]
  before_action :set_reviews, only: [:create]

  def create
    @like = Like.create(review: @review, user: current_user)
    if request.xhr?
      if @like.save
        @count = Like.where("review_id = #{@review.id}").size
        puts "#{@count}"

      else
        @count = Like.where("review_id = #{@review.id}").size
        'movies/show'
        puts "#{@count}"
      end
    else
      if @like.save
        @count = Like.where("review_id = #{@review.id}").size
        render 'movies/show'
        puts "#{@count}"
      else
        @count = Like.where("review_id = #{@review.id}").size
        render 'movies/show'
        puts "#{@count}"
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

  # def set_count
  #   @count = Like.where("review_id = #{@review.id}").size
  # end

end
