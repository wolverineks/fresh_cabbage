class Comment < ActiveRecord::Base

  validates :body, :user, :review, presence: true

  belongs_to :review, :user

end
