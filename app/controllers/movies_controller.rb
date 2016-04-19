class MoviesController < ApplicationController
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
end
