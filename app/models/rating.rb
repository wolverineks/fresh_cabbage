class Rating < ActiveRecord::Base

  validates :value, :user, :movie, presence: true
  validates :user, uniqueness: { scope: [:movie] }

  belongs_to :user, :movie

end
