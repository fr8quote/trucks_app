json.array!(@status_times) do |status_time|
  json.extract! status_time, :id, :status, :notes, :time_group_id, :status_record_id
  json.url status_time_url(status_time, format: :json)
end
