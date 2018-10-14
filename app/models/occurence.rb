class Occurence < ApplicationRecord
  belongs_to :employee
  belongs_to :turn
  belongs_to :team
  belongs_to :supervisor
  belongs_to :guideline
end
