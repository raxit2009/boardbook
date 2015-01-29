class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :account_number
      t.datetime :post_month
      t.float :beginning_balance
      t.float :ending_balance
      t.float :net_change

      t.timestamps null: false
    end
  end
end
