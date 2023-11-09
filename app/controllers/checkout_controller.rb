class CheckoutController < ApplicationController
    before_action :authenticate_user!, only: [:create, :success, :cancel]
    def create
        @price = params[:price].to_d
        @event_id = params[:event_id]
        @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
          line_items: [
            {
              price_data: {
                currency: 'eur',
                unit_amount: (@price*100).to_i,
                product_data: {
                  name: '#' + @event_id.to_s + '# Event participation',
                },
              },
              quantity: 1
            },
          ],
          metadata: {
            event_id: @event_id
          },
          mode: 'payment',
          customer_email: current_user.email,
          success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
          cancel_url: checkout_cancel_url
        )
        redirect_to @session.url, allow_other_host: true
      end
    
      def success
        @user = current_user
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
        @event_id = @session.metadata.event_id

        Attendance.create(
          event_id: @event_id,
          participant_id: @user.id,
          stripe_id: @session.id
        )
      end
    
      def cancel
      end
end
