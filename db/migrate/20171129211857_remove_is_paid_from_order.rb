class RemoveIsPaidFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :is_paid, :boolean
  end
end
