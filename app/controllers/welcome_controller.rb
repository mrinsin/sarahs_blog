class WelcomeController < ApplicationController

  def index
  end

  def get_events
    @events = Event.all
    events = []
    @events.each do |event|
      events << { id: event.id, title: event.name }
    end
    render :json => events.to_json
  end

  def show
    redirect_to 'welcome/calendar'
  end

  def calendar
    @events = Event.all
  end

end
