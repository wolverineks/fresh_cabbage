class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]
  def index
  	# Number of categories to report on.
  	@NUM_CATS = 3

  	# Number of movies / category
  	@NUM_MOVIES = 6

  	@movies = Movie.limit(5)
  	# Get random categories and populate with movies
  	#rand_cats = Category.order("RAND()").first(NUM_CATS)
  	#trending_movies = {}
  	#rand_cats.each do |cat|
  	#	trending_movies[cat] = []
  	#	trending_movies << Movie.order()
  	#end
  end

  def show
    @reviews = @movie.reviews
  end

  private

    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :mpaa_rating, :synopsis, :runtime, :release_date)
    end


end
