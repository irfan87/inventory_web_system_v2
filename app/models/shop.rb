class Shop < ApplicationRecord
  belongs_to :owner
  has_many :employees
end
