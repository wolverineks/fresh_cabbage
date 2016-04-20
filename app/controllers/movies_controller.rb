class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]
  def index
  	# Number of categories to report on.
  	@NUM_CATS = 3

  	# Number of movies / category
  	@NUM_MOVIES = 6

    @new_movies = Movie.new_releases.limit(15)
    @top_movies = Movie.critically_acclaimed.limit(15)
    top_drama = Category.find_by(name: 'Drama')
    @top_drama = top_drama.movies.limit(15)
    top_action = Category.find_by(name: 'Action')
    @top_action = top_action.movies.limit(15)
    top_comedy = Category.find_by(name: 'Comedy')
    @top_comedy = top_comedy.movies.limit(15)
  	# Get random categories and populate with movies
  	#rand_cats = Category.order("RAND()").first(NUM_CATS)
  	#trending_movies = {}
  	#rand_cats.each do |cat|
  	#	trending_movies[cat] = []
  	#	trending_movies << Movie.order()
  	#end
    # @comedy = Category.find_by(name: 'Comedy')
    @romance = Category.find(9)
    # @drama = Category.find_by(name: 'Drama')
    # @action = Category.find_by(name: 'Action')
  end

  def show
    @reviews = @movie.reviews
    @rating = Rating.find_by(user: current_user, movie: @movie)
    @rating = Rating.new(value: 0) unless @rating
  end

  def top
    @movies = Movie.critically_acclaimed.limit(15)
    render 'movies/top'
  end

  def recent
    @movies = Movie.new_releases.limit(15)
    render 'movies/recent'
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

end
