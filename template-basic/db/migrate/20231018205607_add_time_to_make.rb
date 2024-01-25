class AddTimeToMake < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :time_to_make, :integer, default: 0
  end
end
