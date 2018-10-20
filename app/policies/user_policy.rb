class UserPolicy < ApplicationPolicy
  def permitted_attributes
    [:name, :email, :password, :password_confirmation, :turn_id, :team_id]
  end
end
