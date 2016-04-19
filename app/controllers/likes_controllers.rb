class LikesController < ApplicationController
  before_action :set_review, only: [:show]
  before_action :set_movie, only: [:index]

  def create

  end



  private

  def set_review
    @review = Review.find(params[:id])
  end

end
