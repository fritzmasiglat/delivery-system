class CreateCashouts < ActiveRecord::Migration
  def change
    create_table :cashouts do |t|
      t.belongs_to :customer_order
      t.integer :total_sale_price
      t.integer :delivery_charge
      t.integer :grand_total_sale_price

      t.timestamps
    end
  end
end
