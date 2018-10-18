class Team < ApplicationRecord
  belongs_to :supervisor

  has_many :occurrencies
end
