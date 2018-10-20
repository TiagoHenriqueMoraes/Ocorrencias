class Occurrence < ApplicationRecord
  
  belongs_to :employee
  belongs_to :turn
  belongs_to :team
  belongs_to :user
  belongs_to :guideline

  enum status: [:pending, :finished]

  def date_formatted
    created_at.strftime('%d/%m %H:%M')

  end
end
