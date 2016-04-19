class MovieCategory < ActiveRecord::Base
  validates :movie, :category, presence: true
  validates :category, uniqueness: { scope: [:movie] }

  belongs_to :movie, :category


end
