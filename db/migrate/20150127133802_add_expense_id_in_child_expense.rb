class AddExpenseIdInChildExpense < ActiveRecord::Migration
  def change
  	add_column :child_expenses, :expense_id, :integer
  end
end
