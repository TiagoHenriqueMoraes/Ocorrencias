class Group < ApplicationRecord
  has_many :guidelines
  has_many :occurrences
end
