class LikesController < ApplicationController
  before_action :set_review, only: [:create]


  def create

    @like = Like.create(review: @review, user: current_user)
    respond_to do |format|
      if @like.save
        format.html #{ redirect_to @article, notice: "Article was successfully created. Your edit key is: #{@article.hash_key} " }
        format.json #{ render :show, status: :created, location: @article }
      else
        format.html #{ render :new }
        format.json #{ render json: @article.errors, status: :unprocessable_entity }
      end
  end




  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def set_user
    @user = User.find(current_user.id)
  end

end
