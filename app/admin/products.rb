ActiveAdmin.register Product do

	config.filters = false
	config.batch_actions = false

	permit_params :title, :price, :description, :main_image, :thumb_image

	
	form do |f|
		inputs 'Product' do
			f.input :title
			f.input :description
			f.input :price
			f.input :main_image, as: :file
			f.input :thumb_image, as: :file

		end
		f.semantic_errors
		f.actions
	end

	
	
end
