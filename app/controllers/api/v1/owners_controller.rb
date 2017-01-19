class Api::V1::OwnersController < ApplicationController
	before_action :find_owner_by_id, only: [:show, :update, :destroy]

	def index
		@owners = Owner.all

		render json: @owners
	end

	def create
		@owner = Owner.create(owner_params)
		render json: @owner, location: url_for([:api, :v1, @owner])
	end

	def show
		render json: @owner
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
		params.require(:owner).permit(:owner_name, :owner_phone_number, :owner_email_address)
	end
end
