class Rating < ActiveRecord::Base
  validates :value, :user, :movie, presence: true
  validates :user, uniqueness: { scope: [:movie] }
  belongs_to :user
  belongs_to :movie

  scope :critic_ratings, ->{ joins(:user).where(users: { role: 'critic' }) }
  scope :user_ratings, ->{ joins(:user).where(users: { role: 'user' }) }
end
