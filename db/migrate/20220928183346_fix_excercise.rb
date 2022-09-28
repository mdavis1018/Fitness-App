class FixExcercise < ActiveRecord::Migration[7.0]
  def change
    remove_column :excercise_categories, :excercise_id, :integer
    add_column :excercises, :excercise_category_id, :integer
  end
end
