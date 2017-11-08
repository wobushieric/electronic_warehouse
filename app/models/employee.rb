class Employee < ApplicationRecord

	validates :name, :job_title, presence: true

end
