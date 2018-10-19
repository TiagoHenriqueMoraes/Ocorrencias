class EmployeePolicy < ApplicationPolicy
  def permitted_attributes
    [:name, :turn_id, :team_id, :active]
  end
end
