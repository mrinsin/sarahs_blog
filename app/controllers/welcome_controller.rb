class WelcomeController < ApplicationController

  def index
    @events = Event.all
  end

  def get_events
    @events = Event.all
    events = []
    @events.each do |event|
      events << { id: event.id, title: event.title, start: event.start_time}
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
