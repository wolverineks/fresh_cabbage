class Review < ActiveRecord::Base

  validates :reviewer, presence: true
  validates :body, {presence: true, length: { minimum: 100 } }

  has_many :comments
  belongs_to :reviewer, class_name: User

end
