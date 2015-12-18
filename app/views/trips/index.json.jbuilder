json.array!(@trips) do |trip|
  json.extract! trip, :id, :User_id, :StatusTime_id
  json.url trip_url(trip, format: :json)
end
