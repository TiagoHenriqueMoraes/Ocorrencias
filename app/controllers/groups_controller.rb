class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update, :destroy]
  
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
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
    params.require(:group).permite(*policy(Group).permitted_attributes)
  end
end
