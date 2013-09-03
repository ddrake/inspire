json.array!(@users) do |user|
  json.extract! user, :email, :name, :password_digest, :message_id
  json.url user_url(user, format: :json)
end
