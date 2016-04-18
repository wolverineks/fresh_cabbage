class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :mpaa_rating, null: false
      t.text :synopsis, null: false
      t.integer :runtime, null: false
      t.datetime :release_date, null: false
    end
  end
end
