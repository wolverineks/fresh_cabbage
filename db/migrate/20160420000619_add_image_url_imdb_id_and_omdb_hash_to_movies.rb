class AddImageUrlImdbIdAndOmdbHashToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image_url, :string
    add_column :movies, :imdb_id, :string
    add_column :movies, :omdb_json, :text
  end
end
