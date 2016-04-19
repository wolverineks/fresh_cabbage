class Review < ActiveRecord::Base
  validates :reviewer, :movie, presence: true
  validates :body, {presence: true, length: { minimum: 100 } }
  has_many :comments
  belongs_to :reviewer, class_name: User
  belongs_to :movie
end
