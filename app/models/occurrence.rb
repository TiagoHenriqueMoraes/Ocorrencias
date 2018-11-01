class Occurrence < ApplicationRecord
  
  belongs_to :employee, dependent: :destroy
  belongs_to :turn, dependent: :destroy
  belongs_to :team, dependent: :destroy
  belongs_to :user, dependent: :destroy
  belongs_to :guideline, dependent: :destroy

  enum status: [:pending, :finished]

  def date_formatted
    created_at.strftime('%d/%m %H:%M')
  end
end
