class CreateIncategories < ActiveRecord::Migration
  def change
    create_table :incategories do |t|
      t.integer :account_number
      t.integer :property
      t.string :post_month
      t.string :tran_date
      t.string :refer
      t.string :description
      t.string :debit
      t.string :credit

      t.timestamps null: false
    end
  end
end
