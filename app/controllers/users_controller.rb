class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.kind = 1
    binding.pry
    if @user.save
      redirect_to root_path(), notice: "Supervisor criado com sucesso!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(*policy(User).permitted_attributes)
  end
end