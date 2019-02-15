class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
  end

  def index
    @events = Event.paginate(page: params[:page])
  end

end
