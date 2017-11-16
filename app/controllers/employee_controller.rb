class EmployeeController < ApplicationController
  def index
  	@employees = Employee.all
  end

  def test
  	@employees_json = Employee.all
  	render json: { :employees => @employees_json}
  end

end
