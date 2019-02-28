json.extract! contact, :id, :name, :work_number, :phone_number, :street_1, :city_1, :zipcode_1, :street_2, :city_2, :zipcode_2, :created_at, :updated_at
json.url contact_url(contact, format: :json)
