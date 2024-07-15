class EmployeesController < ApplicationController
  before_action :set_hr

  def index
    @employees = @hr.employees.all
  end

  def new
    @employee = @hr.employees.build
  end

  def create
    @employee = @hr.employees.build(employee_params)

    if @employee.save
      redirect_to hr_path(@hr)
    else
      render :new
    end
  end

  def destroy
    @employee = @hr.employees.find(params[:id])
    @employee.destroy
    redirect_to hr_employees_path(@hr)
  end

  private

  def set_hr
    @hr = Hr.find(params[:hr_id]) 
  end

  def employee_params
    params.require(:employee).permit(:name, :email, :phone, :date_of_interview)
  end
end
