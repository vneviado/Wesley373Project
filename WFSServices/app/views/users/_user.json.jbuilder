json.extract! user, :id, :role, :username, :group_string, :created_at, :updated_at
json.url user_url(user, format: :json)
