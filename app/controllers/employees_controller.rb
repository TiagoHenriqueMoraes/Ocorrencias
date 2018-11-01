class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy]
  
  def index
    @employees = Employee.order(:name).all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path(), notice: "Atendente cadastrado com sucesso"
    else  
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @employee.destroy
    redirect_to employees_path(), notice: "Atendente excluido com sucesso"
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(*policy(Employee).permitted_attributes)
  end
end
