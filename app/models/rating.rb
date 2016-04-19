class Rating < ActiveRecord::Base
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
end
