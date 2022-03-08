class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.integer :item_id, null: false, foreign_key: true
      t.integer :vendor_id, null: false, foreign_key: true
      t.decimal :cost_price
      t.decimal :purchase_quantity
      t.timestamps
    end
  end
end
