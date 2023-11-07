class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :is_the_owner?, only: [:edit, :update, :destroy]

  def index
    @past_events = Event.where('start_date < ?', Date.today)
    @future_events = Event.where('start_date > ?', Date.today)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.title = params[:event][:title]
    @event.description = params[:event][:description]
    @event.start_date = params[:event][:start_date]
    @event.duration = params[:event][:duration]
    @event.price = params[:event][:price]
    @event.location = params[:event][:location]
    @event.organizer = current_user

    if @event.save
      redirect_to events_path, notice: "Your event has been successfully created."
    else
      render :new, alert: "Something went wrong."
    end
  end

  def edit

  end

  def update
    @event.title = params[:event][:title]
    @event.description = params[:event][:description]
    @event.start_date = params[:event][:start_date]
    @event.duration = params[:event][:duration]
    @event.price = params[:event][:price]
    @event.location = params[:event][:location]
    @event.organizer = current_user

    if @event.save
      redirect_to events_path, notice: "Your event has been successfully created."
    else
      render :new, alert: "Something went wrong."
    end
  end

  def destroy

  end

  def end_date
    return self.start_date + @event.duration.minutes
  end

  private

  def is_the_owner?
    @event = Event.find(params[:id])

    if current_user != @event.organizer
      redirect_back fallback_location: root_path, alert: "You are not authorized to access this page."
    end
  end
end
