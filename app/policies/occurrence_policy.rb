class OccurrencePolicy < ApplicationPolicy
  def permitted_attributes
    [:status, :description, :turn_id, :user_id, :treatment, :team_id, :guideline_id, :employee_id, :active, 
     :group_id]
  end
end
