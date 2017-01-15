class Employee < ApplicationRecord
  validates :employee_name, presence: true
end
