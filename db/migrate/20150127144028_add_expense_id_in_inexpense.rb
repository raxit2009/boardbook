class AddExpenseIdInInexpense < ActiveRecord::Migration
  def change
  	add_column :inexpenses, :expense_id, :integer
  end
end
