class Meeting < ApplicationRecord
  belongs_to :dog
  belongs_to :place
  belongs_to :second_dog, class_name: 'Dog'
  validates :date, presence: true

  scope :past, -> { where("date < ?", Date.today) }
  scope :today, -> { where(date: Date.today) }
  scope :future, -> { where("date > ?", Date.today) }
end
