class ShopSerializer < ActiveModel::Serializer
  attributes :id, :employee_id, :shop_address, :shop_postcode, :shop_phone_number
  belongs_to :employee
end
