class AddAverageCriticRatingToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :average_critic_rating, :float
  end
end
