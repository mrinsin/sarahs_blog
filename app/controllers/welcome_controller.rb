class WelcomeController < ApplicationController

  def index
  end


  def calendar
    @events = Event.all
  end

end
