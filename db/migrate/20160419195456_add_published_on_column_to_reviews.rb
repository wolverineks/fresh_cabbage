class AddPublishedOnColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :published_on, :date
  end
end
