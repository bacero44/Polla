class Match < ApplicationRecord
  before_validation :not_score, on: :create
  belongs_to :stage
  belongs_to :group, optional: true
  belongs_to :home_team, class_name: 'ParticipatingTeam', foreign_key: 'home_team_id'
  belongs_to :away_team, class_name: 'ParticipatingTeam', foreign_key: 'away_team_id'
  

  validates :start, presence: false



  private

  def not_score
    self.score_team_1 = nil
    self.score_team_2 = nil
  end
end
