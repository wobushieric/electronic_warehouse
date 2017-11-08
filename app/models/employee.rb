class Employee < ApplicationRecord

	validates :name, :job_title, presence: true

	mount_uploader :image, CarrierwaveUplodaerUploader
end
