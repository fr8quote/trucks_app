json.array!(@trips) do |trip|
  json.extract! trip, :id, :status_time_id, :user_id, :total_hours
  json.url trip_url(trip, format: :json)
end
