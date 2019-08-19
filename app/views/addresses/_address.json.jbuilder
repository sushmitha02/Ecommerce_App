json.extract! address, :id, :name, :phone_no, :address1, :address2, :city, :state, :pincode, :created_at, :updated_at
json.url address_url(address, format: :json)
