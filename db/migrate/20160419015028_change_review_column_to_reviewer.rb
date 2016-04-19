class ChangeReviewColumnToReviewer < ActiveRecord::Migration
  def change
    rename_column :reviews, :user_id, :reviewer_id
  end
end
