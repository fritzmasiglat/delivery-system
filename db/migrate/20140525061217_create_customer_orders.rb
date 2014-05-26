class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|
      t.string :customer_name
      t.string :contact_number
      t.string :email
      t.string :address
      t.date :order_date

      t.timestamps
    end
  end
end
