class Supervisor < ApplicationRecord
  has_one :team

  has_many :occurrencies
end
