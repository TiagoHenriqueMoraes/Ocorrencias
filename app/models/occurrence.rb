class Occurrence < ApplicationRecord

  belongs_to :employee, dependent: :destroy
  belongs_to :turn, dependent: :destroy
  belongs_to :team, dependent: :destroy
  belongs_to :user, dependent: :destroy
  belongs_to :guideline, dependent: :destroy
  belongs_to :group

  enum status: [:pending, :finished]

  before_create :occurrences_quantity

  def date_formatted
    created_at.strftime('%d/%m %H:%M')
  end

  def occurrences_quantity
    repetition = Occurrence.where(employee_id: employee_id, group_id: group_id)
    self.increment(:quantity, 1) if repetition.present?
  end
end
