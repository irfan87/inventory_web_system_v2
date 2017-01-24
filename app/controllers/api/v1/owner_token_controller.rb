class Api::V1::OwnerTokenController < Knock::AuthTokenController
	before_action :authenticate!

	def create
		render json: { jwt: auth_token.token }, status: :ok
	end

	private

	def authenticate!
		raise Knock.not_found_exception_class unless owner.authenticate(auth_params[:password])
	end

	def auth_token
		AuthToken.new payload: { sub: owner.id }
	end

	def user
		Knock.current_user_from_handle.call auth_params[Knock.handle_attr]
	end

	def auth_params
		params.require(:auth).permit(Knock.handle_attr, :password)
	end
end
