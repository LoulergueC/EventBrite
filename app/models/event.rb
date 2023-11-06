class Event < ApplicationRecord
    # Validates for all references
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :price, presence: true, numericality: { only_integer: true, between: 1..1000 }
    validates :location, presence: true
    validates :start_date, presence: true, comparison: { greater_than: Time.now }
    validates :duration, presence: true, numericality: { only_integer: true, multiple_of: 5, greater_than: 0 }

    # Link to other models
    belongs_to :organizer, class_name: "User"
    has_many :attendances
    has_many :participants, through: :attendances, class_name: "User"
end
