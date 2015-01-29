class AddInexpenseIdInCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :inexpense_id, :integer
  end
end
