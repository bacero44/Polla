class GroupSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  belongs_to :stage
  
  has_many :matches
  
end
