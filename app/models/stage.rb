class Stage < ApplicationRecord
  belongs_to :tournament
  validates :name, presence: true
  has_many :groups
end
