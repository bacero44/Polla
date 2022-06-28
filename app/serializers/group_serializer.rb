class GroupSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  belongs_to :stage 
end
