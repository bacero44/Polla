class StageSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  belongs_to :tournament
  has_many :groups
  has_many :matches
  link :self do |object|
    "/tournaments/#{object.tournament_id}/stage/#{object.id}"
  end
end
