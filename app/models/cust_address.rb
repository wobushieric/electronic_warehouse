class CustAddress < ApplicationRecord
  belongs_to :user
  belongs_to :province

  validates :first_name, :last_name, :address, :city, :postal_code, presence: true

end
