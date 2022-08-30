class Walk < ApplicationRecord
  belongs_to :place
  belongs_to :dog
  validates :date, presence: true
end
