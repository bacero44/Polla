class Stage < ApplicationRecord
  belongs_to :tournament
  validates :name, presence: true
  has_many :groups
  has_many :matches
end
