class GroupPolicy < ApplicationPolicy
  def permitted_attributes
    [:description, :weight]
  end
end
