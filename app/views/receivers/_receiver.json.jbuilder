json.extract! receiver, :id, :name, :address, :created_at, :updated_at
json.url receiver_url(receiver, format: :json)
