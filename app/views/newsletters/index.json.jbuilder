json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :title, :message, :schedules, :photos
  json.url newsletter_url(newsletter, format: :json)
end
