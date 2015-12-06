class EventsController < ApplicationController
  def new
  end
  def index
  	@elist = Event.all()
  end
end
