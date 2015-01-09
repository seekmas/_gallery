json.array!(@results) do |result|
  json.extract! result, :id, :field_id, :field_value, :anonymous_id, :activity_id
  json.url result_url(result, format: :json)
end
