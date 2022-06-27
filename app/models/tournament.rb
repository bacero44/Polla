class Tournament < ApplicationRecord
  validates :name, presence: true
  has_many :stages
end
