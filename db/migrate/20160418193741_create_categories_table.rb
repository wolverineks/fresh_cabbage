class CreateCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories_tables do |t|
      t.string :name, null: false
    end
  end
end
