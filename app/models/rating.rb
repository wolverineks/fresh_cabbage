class Rating < ActiveRecord::Base
  after_commit :recalculate_average_for_movie

  validates :value, :user, :movie, presence: true
  validates :user, uniqueness: { scope: [:movie] }
  belongs_to :user
  belongs_to :movie

  scope :critic_ratings, ->{ joins(:user).where(users: { role: 'critic' }) }
  scope :user_ratings, ->{ joins(:user).where(users: { role: 'user' }) }

  def self.average_critic_rating
    critic_ratings.average(:value)
  end

  def self.average_user_rating
    user_ratings.average(:value)
  end

  private

  def recalculate_average_for_movie
    movie.reset_average_critic_rating
  end
end
