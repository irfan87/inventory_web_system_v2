class Employee < ApplicationRecord
  validates :employee_name, presence: true
  has_many :shops
end
