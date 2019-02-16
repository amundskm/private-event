class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    unless current_user.nil?

      @event = current_user.hosted_events.build(params)
      if @event.save
        flash[:info] = "Event saved."
        redirect_to current_user
      end
    else
      render 'new'
    end
  end

  def index
    @all_upcoming_events = Event.upcoming_events
    @all_past_events = Event.past_events
  end

end
