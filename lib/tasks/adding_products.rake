namespace :adding_products do
	desc "Ecommerce_App"
	task products: :environment do
    100.times do |i|
      Product.create({
      	title: "sample product #{i}",
			  description: "sample product description #{i}",
			  price: "#{i * (2.3/5)}", 
			  thumb_image: "http://placehold.it/#{350}x#{200}" })
    end
  end
end
