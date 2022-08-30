class Match < ApplicationRecord
  belongs_to :dog
  belongs_to :second_dog, class_name: 'Dog'
end
