class Api::V1::EmployeesController < ApplicationController
	def index
		@shops = Shop.find(params[:id])
		@employees = @shops.employees.all

		render json: @employees, status: :ok
	end

	def create
		@shop = Shop.find(params[:shop_id])
		@employee = @shop.employees.create(employee_params)

		render json: @employee, status: :created
	end

	def show
	end

	def update
	end

	def destroy
	end

	private

	def employee_params
		params.require(:employee).permit(:shop_id, :employee_name)
	end
end
