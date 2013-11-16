json.array!(@trips) do |trip|
  json.extract! trip, :name
  json.url trip_url(trip, format: :json)
end
