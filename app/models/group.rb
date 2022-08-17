class Group < ApplicationRecord
  belongs_to :stage
  has_many :matches
  validates :name, presence: true
end
