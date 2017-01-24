class Api::V1::OwnersController < ApplicationController
	before_action :find_owner_by_id, only: [:show, :update, :destroy]
	before_action :authenticate_v1_owner

	def index
		@owners = Owner.all

		render json: @owners
	end

	def create
		@owner = Owner.new(owner_params)

		if @owner.save
			render json: @owner, location: url_for([:api, :v1, @owner]), status: 200
		else
			render json: ErrorSerializer.serialize(@owner.errors), status: 422
		end
	end

	def show
		render json: @owner, status: 200
	end

	def update
		@owner.update(owner_params)

		render json: @owner
	end

	def destroy
		@owner.destroy
		render json: @owner
	end

	private

	def find_owner_by_id
		@owner = Owner.find(params[:id])
	end

	def owner_params
		params.require(:owner).permit(:owner_name, :owner_phone_number, :owner_email_address, :password, :password_confirmation)
	end
end
