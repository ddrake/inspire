json.array!(@messages) do |message|
  json.extract! message, :body
  json.url message_url(message, format: :json)
end
