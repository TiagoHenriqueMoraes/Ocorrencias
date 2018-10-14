class Employee < ApplicationRecord
  belongs_to :turn
  belongs_to :team
end
