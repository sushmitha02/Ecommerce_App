class Product
	include Mongoid::Document
	field :title, type: String
	field :description, type: String
	field :price, type: Float
	field :main_image, type: Array
	field :thumb_image, type: Array

	mount_uploader :thumb_image, ImageUploader
	mount_uploader :main_image, ImageUploader

	validates :title, :description,:price, :presence => true
	validates :title, uniqueness: true
	validates_numericality_of :price, :greater_than => 0, :less_than => 1000000   
	validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/

	before_validation :method1
	after_validation :method2

	before_create :method3
	after_create :just_created
	
	private

	def method1
		puts "Called Before validation"
	end

	def method2
		if self.errors.any?
			puts "title already taken"
		else
			puts "Called After validation"
		end
	end

	def method3
		puts "about to create"
	end

	def just_created
	  puts "just created a product" if title_changed?
	  puts self.title = title.downcase
		puts self.title = title.upcase
	end

end
