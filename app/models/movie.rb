class Movie < ActiveRecord::Base
  validates :title, :mpaa_rating, :synopsis, :runtime, :release_date, presence: true
  has_many :ratings
  has_many :reviews
  has_many :reviewers, through: :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  def critic_ratings
    ratings.critic_ratings
  end

  def user_ratings
    ratings.user_ratings
  end

  def average_critic_rating
    ratings.average_critic_rating
  end

  def average_user_rating
    ratings.average_user_rating
  end
end
