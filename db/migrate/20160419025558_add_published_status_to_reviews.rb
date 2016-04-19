class AddPublishedStatusToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :published, :boolean, default: false
  end
end
