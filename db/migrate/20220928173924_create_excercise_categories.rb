class CreateExcerciseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :excercise_categories do |t|
      t.integer :excercise_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
