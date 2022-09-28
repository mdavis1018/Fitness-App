class CreateExcercises < ActiveRecord::Migration[7.0]
  def change
    create_table :excercises do |t|
      t.text :description
      t.string :name
      t.timestamps
    end
  end
end
