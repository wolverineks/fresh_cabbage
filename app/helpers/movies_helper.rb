module MoviesHelper
  def display_critic_rating_average_for(movie)
    number_with_precision(movie.ratings.critic_ratings.average(:value), precision: 1) || 'No critic ratings'
  end

  def display_user_rating_average_for(movie)
    number_with_precision(movie.ratings.user_ratings.average(:value), precision: 1) || 'No user ratings'
  end
end
