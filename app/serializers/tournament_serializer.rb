class TournamentSerializer
  include JSONAPI::Serializer
  
  attributes :name
  has_many :stages
  link :self do |object|
    "/tournament/#{object.id}"
  end
  
end
