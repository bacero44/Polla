class TeamSerializer
  include JSONAPI::Serializer
  
  attributes :id, :name, :image_url

end
