class ParticipatingTeam < ApplicationRecord
  
  belongs_to :team
  belongs_to :tournament

  has_many :home_team, class_name: 'Match', foreign_key: 'home_team_id'
  has_many :away_team, class_name: 'Match', foreign_key: 'away_team_id'

 
end
