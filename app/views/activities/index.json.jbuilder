json.array!(@activities) do |activity|
  json.extract! activity, :id, :subject, :expired_at, :content
  json.url activity_url(activity, format: :json)
end
