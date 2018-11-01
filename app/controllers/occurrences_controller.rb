class OccurrencesController < ApplicationController
  before_action :set_occurrence, only: [:edit, :update, :show, :destroy]
  
  def index
    @occurrences = Occurrence.all.order(:created_at).reverse
  end

  def new
    @occurrence = Occurrence.new
  end

  def create
    @occurrence = Occurrence.new(occurrence_params)
    user = current_user if current_user.supervisor?
    if @occurrence.save
      redirect_to occurrences_path, notice: "Ocorrencia salva com sucesso."
    else  
      render :new
    end
  end

  def edit
  end

  def update
    if @occurrence.update(occurrence_params)
      redirect_to occurrences_path, notice: "Occorencia atualizada!"
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_occurrence
    @occurrence = Occurrence.find(params[:id])
  end

  def occurrence_params
    params.require(:occurrence).permit(*policy(Occurrence).permitted_attributes)
  end
end
