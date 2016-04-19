class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :movie_categories
  has_many :movies, through: :movie_categories

# Some method to display the movies with the highest average criti ratings in the last 7 days
  # scope :top_movies, -> { joins(:rating).order().limit(10)  }

end
