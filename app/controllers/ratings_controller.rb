class RatingsController < ApplicationController
  before_action :authorize_user!, :get_movie, :get_rating, :set_rating_value
  respond_to :html, :js

  def create
    flash[:notice] = 'Rating was successfully created.' if @rating.save
    respond_with(@movie)
  end

  def update
    flash[:notice] = 'Rating was successfully updated.' if @rating.save
    respond_with(@movie)
  end

  private

  def authorize_user!
    render nothing: true, status: 401 and return unless current_user
  end

  def get_movie
    @movie ||= Movie.find(params[:movie_id])
  end

  def get_rating
    @rating ||= Rating.find_or_initialize_by(user: current_user, movie: get_movie)
  end

  def set_rating_value
    get_rating.value = params[:rating]
  end

end
