class ApplicationController < ActionController::API
	include Knock::Authenticable

	private

	def authenticate_v1_owner
		authenticate_for Owner
	end
end
