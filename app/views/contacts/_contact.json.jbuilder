json.extract! contact, :id, :name, :work_number, :phone_number, :street_1, :city_1, :zip_1, :street_2, :city_2, :zip_2, :created_by, :updated_by, :created_at, :updated_at
json.url contact_url(contact, format: :json)
