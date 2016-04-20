class ResetAverageCriticRatingForMovies < ActiveRecord::Migration
  def change
    movies = Movie.all
    movies.each do |movie|
      movie.reset_average_critic_rating
      movie.save
    end
  end
end
