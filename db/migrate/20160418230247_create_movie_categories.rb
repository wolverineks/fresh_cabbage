class CreateMovieCategories < ActiveRecord::Migration
  def change
    create_table :movie_categories do |t|
      t.integer :movie_id,  null: false
      t.integer :category_id, null: false

      t.timestamps null: false
    end
    add_index :movie_categories, [:movie_id, :category_id], unique: true
  end
end
