class Guideline < ApplicationRecord
  belongs_to :group

  has_many :occurrencies
end
