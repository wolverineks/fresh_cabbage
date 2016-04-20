class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :movie_categories
  has_many :movies, through: :movie_categories

end
