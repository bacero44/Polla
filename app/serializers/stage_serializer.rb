class StageSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  belongs_to :tournament
  link :self do |object|
    "/tournaments/#{object.tournament_id}/stage/#{object.id}"
  end
end
