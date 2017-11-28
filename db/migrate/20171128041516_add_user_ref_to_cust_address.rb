class AddUserRefToCustAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :cust_addresses, :user, foreign_key: true
  end
end
