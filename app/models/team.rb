class Team < ApplicationRecord
  has_many :participantung_teams
  has_many :matches, :through => :participanting_teams

  def matches
    Match.where("team_1_id = ? or team_2_id = ?", self.id,self.id)
  end

end
