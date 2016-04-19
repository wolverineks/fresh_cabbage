class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]

  def index
    @reviews = Review.all.where("movie_id = #{params[:movie_id]}")
  end

  def show

  end

  private

  def set_review
    @review = Review.find(params[:id])
  end
end
