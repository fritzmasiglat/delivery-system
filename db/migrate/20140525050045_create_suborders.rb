class CreateSuborders < ActiveRecord::Migration
  def change
    create_table :suborders do |t|
      t.string :name
      t.string :foodtype
      t.integer :quantity
      t.integer :totalprice
      
      t.timestamps
    end
  end
end
