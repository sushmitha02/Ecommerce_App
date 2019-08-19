class Address
	include Mongoid::Document
	field :name, type: String
	field :phone_no, type: String
	field :address1, type: String
	field :address2, type: String
	field :city, type: String
	field :state, type: String
	field :pincode, type: String

	validates :name, presence: true
	validates :phone, presence: true,format: {with: /\A^(\+91[\-\s]?)\d{10}$\Z/ },length: { minimum: 10,maximum:13 }
	validates :address1, presence: true
	validates :address2, presence: true
	validates :state, presence: true
	validates :city, presence: true
	validates :pincode, presence: true

end
