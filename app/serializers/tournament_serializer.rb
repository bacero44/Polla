class TournamentSerializer
  include JSONAPI::Serializer
  
  attributes :name
  #has_many :stages

  has_many :stages, links: {
    self: -> (object) {
      "/tournament/#{object.id}/stages/"
    }
  }

  link :self do |object|
    "/tournament/#{object.id}"
  end
  
end
