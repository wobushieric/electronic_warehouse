class Order < ApplicationRecord
  belongs_to :province
  belongs_to :user
  belongs_to :order_status

end
