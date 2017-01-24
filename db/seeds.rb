# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'ffaker'

10.times do
	@owner = Owner.create(owner_name: FFaker::Name.name, owner_phone_number: FFaker::PhoneNumber.phone_number, owner_email_address: FFaker::Internet.email)
	3.times do
		@owner.shops.create(shop_name: FFaker::Company.name, shop_address: FFaker::Address.street_address, shop_postcode: FFaker::AddressUK.postcode, shop_phone_number: FFaker::PhoneNumber.phone_number, shop_other_phone_number: FFaker::PhoneNumber.phone_number, shop_fax_number: FFaker::PhoneNumber.phone_number)
	end
end