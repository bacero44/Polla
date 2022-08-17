class MatchSerializer
  include JSONAPI::Serializer
  attributes :start
  
  belongs_to :stage
  belongs_to :group

  belongs_to :home_team, serializer: ParticipatingTeamSerializer
  belongs_to :away_team, serializer: ParticipatingTeamSerializer

end
