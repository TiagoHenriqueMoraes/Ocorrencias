class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.kind = 1
    if @user.save
      redirect_to root_path(), notice: "Supervisor criado com sucesso!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(users_params)
      redirect_to users_path, notice: "Usuario atualizada!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(*policy(User).permitted_attributes)
  end
end