class Team < ApplicationRecord
  has_many :users
  has_many :employees
  has_many :occurrencies
end
