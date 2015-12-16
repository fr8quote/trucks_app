json.array!(@status_records) do |status_record|
  json.extract! status_record, :id, :group_id, :user_id
  json.url status_record_url(status_record, format: :json)
end
