class AddIndexToReviewLike < ActiveRecord::Migration
  def change
  	add_index(:review_likes, [:user_id, :review_id], unique: true)
  end
end
