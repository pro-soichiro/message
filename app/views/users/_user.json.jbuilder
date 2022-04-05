json.extract! user, :id, :name, :height, :postal_code, :password, :place, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
