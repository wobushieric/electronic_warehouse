class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :shipping_address
      t.string :cust_name
      t.references :province, foreign_key: true
      t.boolean :is_shipped
      t.boolean :is_paid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
