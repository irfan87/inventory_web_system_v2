class ShopSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :shop_name, :shop_address, :shop_postcode, :shop_phone_number, :shop_other_phone_number, :shop_fax_number
  belongs_to :owner
  has_many :employees
end
