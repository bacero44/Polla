class Group < ApplicationRecord
  belongs_to :stage
  validates :name, presence: true
end
