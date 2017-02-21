json.extract! event, :id, :title, :start_time, :description, :address, :created_at, :updated_at
json.url event_url(event, format: :json)
