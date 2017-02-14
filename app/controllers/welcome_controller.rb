class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end


  def calendar
    @events = Event.all
  end

end
