class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    if (@review.save)
      redirect_to events_url, :notice => "Thanks for your feedback!"
    else
      render :new
    end
  end
end
