class Changenametotitle < ActiveRecord::Migration[7.0]
  def change
    remove_column :workouts, :name, :string
    add_column :workouts, :title, :string
  end
end
