class CreateSnapCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :snap_categories do |t|
    	t.integer :category_id
		t.integer :snap_id
    end
  end
end
