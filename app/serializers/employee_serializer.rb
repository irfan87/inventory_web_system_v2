class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :employee_name
  has_many :shops
end
