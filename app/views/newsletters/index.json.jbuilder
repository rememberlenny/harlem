json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :title, :message, :schedule_id, :photo_id
  json.url newsletter_url(newsletter, format: :json)
end
