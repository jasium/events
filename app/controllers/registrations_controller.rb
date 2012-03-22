class RegistrationsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new # calling new on collection not individual element?!
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new(params[:registration])
    if @registration.save
      redirect_to events_registrations_url(@event),
                  notice: "Thanks for registering!" # figue out why flash not working
    else
      render :new
    end
  end

  def index
    @event = Event.find(params[:event_id])
    @registrations = @event.registrations
  end
end
