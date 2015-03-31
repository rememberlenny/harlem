json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :url, :date, :notes
  json.url photo_url(photo, format: :json)
end
