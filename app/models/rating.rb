class Rating < ActiveRecord::Base

  validates :value, :user_id, :movie_id, presence: true
  validates :user_id, uniqueness: { scope: [:movie_id] }

  belongs_to :user, :movie

end
