class GuidelinesController < ApplicationController
  before_action :set_guideline, only: [:edit, :update, :destroy]
  
  def index
    @guidelines = Guideline.all
  end

  def new
    @guideline = Guideline.new
  end

  def create
    @guideline = Guideline.new(guideline_params)
    if @guideline.save
      redirect_to root_path(), notice: "Diretriz criada com sucesso!!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @guideline.update(guideline_params)
      redirect_to root_path, notice: "Diretriz atualizada!"
    else
      render :edit
    end
  end

  def destroy
  end

  def show
  end

  private

  def guideline_params
    params.require(:guideline).permit(*policy(Guideline).permitted_attributes)
  end

  def set_guideline
    @guideline = Guideline.find(params[:id])
  end
end
