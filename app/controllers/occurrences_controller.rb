class OccurrencesController < ApplicationController
  before_action :set_occurrence, only: [:edit, :show, :destroy]
  
  def index
    @occurrences = Occurrence.all
  end

  def new
    @occurrence = Occurrence.new
  end

  def create
    @occurrence = Occurrence.new(occurrences_params)
    if @occurrence.save
      redirect_to occurrences_path, notice: "Save Successful."
    else  
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def set_occurrence
    @occurrence = Occurrences.find(params[:id])
  end

  def occurrences_params
    params.require(:occurrence).permit(:status, :description, :turn_id, :supervisor_id, :treatment, :team_id,
                                       :guideline_id, :employee_id)
  end
end
