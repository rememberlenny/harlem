json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :datetime, :notes
  json.url event_url(event, format: :json)
end
