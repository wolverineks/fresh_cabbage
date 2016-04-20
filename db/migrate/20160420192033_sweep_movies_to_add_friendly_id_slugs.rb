class SweepMoviesToAddFriendlyIdSlugs < ActiveRecord::Migration
  def change
    Movie.find_each(&:save)
  end
end
