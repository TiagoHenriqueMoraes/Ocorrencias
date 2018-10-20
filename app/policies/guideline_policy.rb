class GuidelinePolicy < ApplicationPolicy
  def permitted_attributes
    [:item, :group_id]
  end
end
