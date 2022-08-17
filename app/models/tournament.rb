class Tournament < ApplicationRecord
  validates :name, presence: true
  has_many :stages
  has_many :participating_teams
  has_many :teams, through: :participating_teams
end