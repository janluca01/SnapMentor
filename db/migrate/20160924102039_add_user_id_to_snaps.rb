class AddUserIdToSnaps < ActiveRecord::Migration[5.0]
  def change
  	add_column :snaps, :user_id, :integer
  end
end
