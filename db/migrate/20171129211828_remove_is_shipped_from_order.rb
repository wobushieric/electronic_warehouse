class RemoveIsShippedFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :is_shipped, :boolean
  end
end
