class ReviewLike < ActiveRecord::Base
	validates :review, :user, presence: true
	validates :user, uniqueness: { scope: [:review] }

	belongs_to :review 
	belongs_to :user
end
