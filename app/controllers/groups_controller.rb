class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy]
  
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path, notice: "Grupo salvo com sucesso."
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

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(*policy(Group).permitted_attributes)
  end
end
