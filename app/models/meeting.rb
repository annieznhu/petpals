class Meeting < ApplicationRecord
  belongs_to :dog
  belongs_to :place
  belongs_to :second_dog, class_name: 'Dog'
  validates :date, presence: true
end
