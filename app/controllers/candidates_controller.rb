class CandidatesController < ApplicationController
  before_action :find_hr

  def index
    @candidates = @hr.candidates.all
  end

  def new
    @candidate = @hr.candidates.build
  end

  def create
    @candidate = @hr.candidates.build(candidate_params)
    if @candidate.save
      redirect_to hr_path(@hr)
    else
      render :new
    end
  end

  def edit
    @candidate = Candidate.find_by(email: params[:email])
  end

  def update
    @candidate = Candidate.find_by(email: params[:email])
    if @candidate.update(candidate_params)
      redirect_to hr_path(@hr)
    else
      render :edit
    end
  end

  def destroy
    @candidate = @hr.candidates.find(params[:id])
    @candidate.destroy
    redirect_to hr_candidates_path(@hr)
  end

  private

  def find_hr
    @hr = Hr.find(params[:hr_id])
  end

  def candidate_params
    params.require(:candidate).permit(:name, :email, :phone, :role, :qualification, :college, :experience, :company, :technology)
  end

end
