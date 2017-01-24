class Owner < ApplicationRecord
	has_many :shops
	has_secure_password
end
