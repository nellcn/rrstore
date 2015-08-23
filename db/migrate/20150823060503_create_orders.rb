class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :user_id
      t.integer :invoice_id
      t.integer :prod_id
      t.integer :prod_count

      t.timestamps null: false
    end
  end
end
