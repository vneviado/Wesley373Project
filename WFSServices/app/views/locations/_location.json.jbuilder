json.extract! location, :id, :name, :phone_number, :street, :city, :zipcode, :created_at, :updated_at
json.url location_url(location, format: :json)
