class RenameReviewLikeToLike < ActiveRecord::Migration
  def change
  	rename_table :review_likes, :likes
  end
end
