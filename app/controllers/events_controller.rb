class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  # validates :title, presence: true, uniqueness: true
  # validates :start_time, presence: true

  # GET /events
  # GET /events.json
  def index
    @events = Event.all

  end

  def get_events
    events = Event.all
    get_events = []
    events.each do |event|
      get_events << {
       id: event.id,
       title: event.title,
       start: event.start_time,
       allDay: true,
       url: '/events/' + event.id.to_s
       # create url so you can click on a specific event and be taken to that page
      }
    end
    render :json => get_events.to_json
  end


  #


  # GET /events/1
  # GET /events/1.json
  def show
    @events = Event.all

  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to '/welcome/calendar', notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to '/welcome/calendar', notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to '/welcome/calendar', notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # GOOGLE MAP
  def map_location
    @event = Event.find(params[:event_id])
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat(event.latitude)
      marker.lng(event.longitude)
      marker.infowindow("<em>" + event.address + "</em>")
    end
    render json: @hash.to_json
  end
  # END GOOGLE MAP

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :start_time, :description, :address, :url)
    end


end
