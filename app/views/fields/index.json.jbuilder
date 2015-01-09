json.array!(@fields) do |field|
  json.extract! field, :id, :key_name, :value_name, :activity_id
  json.url field_url(field, format: :json)
end
