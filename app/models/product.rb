class Product < ApplicationRecord
	belongs_to :category

	validates :name, :price, :stock_quantity, presence: true
	validates :name, uniqueness: true

	mount_uploader :image, CarrierwaveUplodaerUploader
end
