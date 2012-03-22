class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    @review = @event.reviews.new(params[:review])

    if (@review.save)
      redirect_to event_url(@event), :notice => "Thanks for your feedback!"
    else
      render :new
    end
  end

  def index
    @event = Event.find(params[:event_id])
    @reviews = @event.reviews
  end
end
