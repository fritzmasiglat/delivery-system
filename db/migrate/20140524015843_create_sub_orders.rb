class CreateSubOrders < ActiveRecord::Migration
  def change
    create_table :sub_orders do |t|
      t.belongs_to :customer_order
      t.integer :food_id
      t.string :name
      t.string :foodtype
      t.integer :quantity
      t.integer :totalprice

      t.timestamps
    end
  end
end
