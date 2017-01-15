class Api::V1::EmployeesController < ApplicationController
	before_filter :employee_by_id, only: [:show, :update, :destroy]

	def index
		@employees = Employee.all

		render json: @employees
	end

	def create
		@employee = Employee.create(employee_params)

		if @employee.save
			render json: @employee, location: url_for([:api, :v1, @employee])
		else
			render json: {error: @employee.errors.full_messages}, status: 422
		end
	end

	def show
		render json: @employee
	end

	def update
		@employee.update(employee_params)

		render json: @employee
	end

	def destroy
		@employee.destroy
		render json: @employee
	end

	private

	def employee_by_id
		@employee = Employee.find(params[:id])
	end

	def employee_params
		params.require(:employee).permit(:employee_name)
	end
end