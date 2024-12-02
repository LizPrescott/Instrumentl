json.extract! owner, :id, :name, :address, :city, :state, :zip, :created_at, :updated_at
json.url owner_url(owner, format: :json)
