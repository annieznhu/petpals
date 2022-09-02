class Match < ApplicationRecord
  belongs_to :dog
  belongs_to :second_dog, class_name: 'Dog'
  has_many :messages, dependent: :destroy
end
