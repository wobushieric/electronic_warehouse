class Order < ApplicationRecord
  belongs_to :province
  belongs_to :user

  validates :is_shipped, :is_paid, presence: true

end
