class IntervsController < ApplicationController
  before_action :find_hr
  def index
    @intervs = @hr.intervs.all
  end

  def new
    @interv = @hr.intervs.build
  end

  def create
    @interv =@hr.intervs.build(interv_params)
    if @interv.save
      redirect_to hr_path(@hr)
    else
        render :new
    end
  end

  def destroy
    @interv = @hr.intervs.find(params[:id])
    @interv.destroy
    redirect_to hr_intervs_path(@hr)
  end

  def edit
  end

  def update
  end
  private
  def find_hr
    @hr = Hr.find(params[:hr_id])
  end

  def interv_params
    params.require(:interv).permit(:status, :feedback, :round, :interview_time, :employee_id, :candidate_id)
  end
end
