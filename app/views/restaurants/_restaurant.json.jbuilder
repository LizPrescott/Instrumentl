json.extract! restaurant, :id, :name, :address, :city, :postal_code, :phone_number, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
