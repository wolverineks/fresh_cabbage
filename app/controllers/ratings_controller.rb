class RatingsController < ApplicationController

  def create
    redirect_to root_path unless current_user

    @movie = Movie.find(params[:movie_id])
    @rating = Rating.find_or_initialize_by(user: current_user, movie: @movie)
    @rating.value = params[:rating]

    respond_to do |format|
      @rating.save
      format.html { redirect_to @movie }
      format.js
    end
  end

  def update
    redirect_to root_path unless current_user

    @movie = Movie.find(params[:movie_id])
    @rating = Rating.find_or_initialize_by(user: current_user, movie: @movie)
    @rating.value = params[:rating]
    @rating.save

    respond_to do |format|
      format.html { redirect_to @movie }
      format.js
    end
  end

end
