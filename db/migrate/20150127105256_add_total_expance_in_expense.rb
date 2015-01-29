class AddTotalExpanceInExpense < ActiveRecord::Migration
  def change
  	add_column :expenses, :mtd_total, :float
  	add_column :expenses, :ytd_total, :float
  end
end
