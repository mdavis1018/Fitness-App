class AddImagetoCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :excercise_categories, :image_url, :string
  end
end
