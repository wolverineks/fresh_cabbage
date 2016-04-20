class CreateReviewLikes < ActiveRecord::Migration
  def change
    create_table :review_likes do |t|
      t.integer :user_id, null: false
      t.integer :review_id, null: false
      t.timestamps null: false
    end
  end
end
