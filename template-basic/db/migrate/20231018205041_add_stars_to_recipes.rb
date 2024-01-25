class AddStarsToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :stars, :integer, default: 0

  end
end
