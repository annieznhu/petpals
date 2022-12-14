class Dog < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  validates :name, :age, :species, :temper, :address, :description, :toys, presence: true

  has_many :walks
  has_many :likes

  has_many :users, through: :likes

  has_many :dog_matches, class_name: 'Match', foreign_key: 'dog_id'
  has_many :second_dog_matches, class_name: 'Match', foreign_key: 'second_dog_id'

  has_many :dog_meetings, class_name: 'Meeting', foreign_key: 'dog_id'
  has_many :second_dog_meetings, class_name: 'Meeting', foreign_key: 'second_dog_id'

  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [:temper, :address, :name, :species, :age, :description],
  using: {
    tsearch: { prefix: true }
  }

  def matches
    Match.where(id: dog_match_ids + second_dog_match_ids)
  end

  def meetings
    Meeting.where(id: dog_meeting_ids + second_dog_meeting_ids)
  end
end
