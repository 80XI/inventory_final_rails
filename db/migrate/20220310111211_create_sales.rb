class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer :customer_id, foreign_key: true
      t.integer :item_id, foreign_key: true
      t.decimal :quantity
      t.decimal :total_amount
      t.timestamps
    end
  end
end
