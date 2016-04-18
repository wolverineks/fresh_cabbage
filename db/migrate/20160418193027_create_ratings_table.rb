class CreateRatingsTable < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.decimal :value, null: false
      t.integer :user_id, null: false
      t.integer :movie_id, null: false
    end
    add_index :ratings, [:user_id, :movie_id], unique: true
  end
end
