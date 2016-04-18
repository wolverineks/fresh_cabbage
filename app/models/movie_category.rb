class MovieCategory < ActiveRecord::Base
  validates :movie_id, :category_id, presence: true
  validates :category_id, uniqueness: { scope: [:movie_id] }

  belongs_to :movie, :category


end
