json.extract! location, :id, :name, :phone_number, :street, :city, :zip, :created_by, :updated_by, :created_at, :updated_at
json.url location_url(location, format: :json)
