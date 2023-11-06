class User < ApplicationRecord
    has_many :attendances, foreign_key: "participant_id"
    has_many :events, through: :attendances
end
