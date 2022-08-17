class ParticipatingTeamSerializer
  include JSONAPI::Serializer
  belongs_to :team
end
