class CreateChildExpenses < ActiveRecord::Migration
  def change
    create_table :child_expenses do |t|
      t.string :name
      t.float :mtd_actual
      t.float :ytd_actual

      t.timestamps null: false
    end
  end
end
