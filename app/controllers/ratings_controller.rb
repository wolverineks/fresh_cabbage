class RatingsController < ApplicationController


  def create
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
