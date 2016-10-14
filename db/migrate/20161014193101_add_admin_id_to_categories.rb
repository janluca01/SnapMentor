class AddAdminIdToCategories < ActiveRecord::Migration[5.0]
  def change
  	add_column :categories, :admin_id, :integer
  end
end
