class AddTitleAndDescriptionToSnaps < ActiveRecord::Migration[5.0]
  def change
  	add_column :snaps, :title, :string
  	add_column :snaps, :description, :string
  end
end
