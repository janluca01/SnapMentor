class AddLinkToSnaps < ActiveRecord::Migration[5.0]
  def change
  	add_column :snaps, :link, :string
  end
end
