class MakeReleaseDateOptionalOnMovies < ActiveRecord::Migration
  def change
    change_column :movies, :release_date, :datetime, null: true
  end
end
