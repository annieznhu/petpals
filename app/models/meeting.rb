class Meeting < ApplicationRecord
  belongs_to :dog
  belongs_to :place
  belongs_to :second_dog, class_name: 'Dog'
  validates :date, presence: true
  has_many :dogs
  has_many :walks
  has_many :meetings
end
