class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    unless current_user.nil?
      @event = current_user.events.new(date: params[:date])
      if @event.save
        flash[:info] = "Event saved."
        redirect_to current_user
      end
    else
      render 'new'
    end
  end

  def index
    @events = Event.where(creator_id: current_user.id)
  end

end
