class Api::V1::EmployeesController < ApplicationController
	def index
	end

	def create
	end

	def show
	end

	def update
	end

	def destroy
	end

	private

	def employee_params
		params.require(:employee).permit(:employee_name)
	end
end
