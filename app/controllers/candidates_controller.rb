class CandidatesController < ApplicationController
  before_action :find_hr

  def new
    @candidate = @hr.candidates.build
  end

  def create
    @candidate = @hr.candidates.build(candidate_params)
    if @candidate.save
      redirect_to hr_path(@hr), notice: 'Candidate was successfully created.'
    else
      render :new
    end
  end

  private

  def find_hr
    @hr = Hr.find(params[:hr_id])
  end

  def candidate_params
    params.require(:candidate).permit(:name, :email, :phone, :role, :qualification, :college, :experience, :company)
  end

end
