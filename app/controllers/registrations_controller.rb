class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.create(params[:registration])
    if @registration.save
      redirect_to events_url, notice: "Thanks for registering!" # figue out why flash not working
    else
      render :new
    end
  end
end
