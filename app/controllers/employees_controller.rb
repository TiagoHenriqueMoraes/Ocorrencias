class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy]
  
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Occurrence.new(employee_params)
    if @employee.save
      redirect_to employee_path, notice: "Save Successful."
    else  
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(*policy(employee).permited_attributes)
  end
end
