json.array!(@scenes) do |scene|
  json.extract! scene, :id, :subject, :content, :photo, :activity_id
  json.url scene_url(scene, format: :json)
end
