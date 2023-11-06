class Attendance < ApplicationRecord
    after_create :joining_greeting

    belongs_to :event
    belongs_to :participant, class_name: "User"

    def joining_greeting
        UserMailer.joining_greeting(self.participant, self.event).deliver_now
        UserMailer.new_participant_email(self.participant, self.event).deliver_now
    end
end
