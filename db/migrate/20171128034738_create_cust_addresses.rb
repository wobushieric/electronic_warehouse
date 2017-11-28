class CreateCustAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :cust_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
