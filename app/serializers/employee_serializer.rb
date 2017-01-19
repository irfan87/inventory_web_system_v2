class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :shop_id, :employee_name

  belongs_to :shop
end
