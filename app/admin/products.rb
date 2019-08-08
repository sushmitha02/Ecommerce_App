ActiveAdmin.register Product do

	config.filters = false
	config.batch_actions = false

	permit_params :title, :price, :description, :main_image, :thumb_image
	
	index do
		column :title
  	    column :description
		column 'Price in $', :price, sortable: true do |product|
			div class: 'price' do
				number_to_currency(product.price)
			end
  		end
  		column :main_image
  	    column :thumb_image
  	end

    form do |f|
		inputs 'Product' do
			f.input :title
			f.input :description
			f.input :price
			f.input :main_image
			f.input :thumb_image

		end
		f.semantic_errors
		f.actions
	end	
	
end
