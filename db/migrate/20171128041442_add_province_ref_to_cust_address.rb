class AddProvinceRefToCustAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :cust_addresses, :province, foreign_key: true
  end
end
