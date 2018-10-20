class Turn < ApplicationRecord
  has_many :employees
  has_many :users
  has_many :occurrencies
end
