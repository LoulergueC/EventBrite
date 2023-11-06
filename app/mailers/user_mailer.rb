class UserMailer < ApplicationMailer
    default from: 'clement@loulergue.fr'

    def welcome_email(user)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @user = user 

        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def joining_greeting(user, event)
        @user = user
        @event = event

        mail(to: @user.email, subject: 'Votre nouvel évènement près de chez vous')
    end

    def new_participant_email(participant, event)
        @participant = participant
        @event = event
        @organizer = @event.organizer

        mail(to: @organizer.email, subject: 'Un nouveau participant à votre évènement !')
    end
end
