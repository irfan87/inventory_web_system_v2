class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :owner_name, :owner_phone_number, :owner_email_address
  has_many :shops
end
