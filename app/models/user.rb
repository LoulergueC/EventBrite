class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    after_create :welcome_send

    has_many :attendances, foreign_key: "participant_id"
    has_many :events, through: :attendances
    
    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end
end
