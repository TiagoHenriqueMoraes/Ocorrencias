class Employee < ApplicationRecord
  belongs_to :turn
  belongs_to :team

  has_many :occurrencies, dependent: :destroy

end