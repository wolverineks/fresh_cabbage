class Movie < ActiveRecord::Base
  validates :title, :mpaa_rating, :synopsis, :runtime, :release_date, presence: true
  has_many :ratings
  has_many :reviews
  has_many :reviewers, through: :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories
end
