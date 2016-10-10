class AddAdminIdToSnaps < ActiveRecord::Migration[5.0]
  def change
  	add_column :snaps, :admin_id, :integer
  end
end
