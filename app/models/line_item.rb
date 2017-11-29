class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :qty, :price, presence: true
end
