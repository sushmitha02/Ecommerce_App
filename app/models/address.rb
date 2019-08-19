class Address
  include Mongoid::Document
  field :name, type: String
  field :phone_no, type: String
  field :address1, type: String
  field :address2, type: String
  field :city, type: String
  field :state, type: String
  field :pincode, type: String
end
