class RemovePublishedFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :published
  end
end
