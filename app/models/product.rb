class Product
	include Mongoid::Document
	field :title, type: String
	field :description, type: String
	field :price, type: Float
	field :main_image, type: Array
	field :thumb_image, type: Array

	validates :title, :description,:price, :presence => true
	validates :title, uniqueness: true
	validates_numericality_of :price, :greater_than => 0, :less_than => 1000000   
    validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/
end
