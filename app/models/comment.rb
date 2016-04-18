class Comment < ActiveRecord::Base

  validates :body, :user_id, :review_id, presence: true

  belongs_to :review, :user

end
