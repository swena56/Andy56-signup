class Product < ActiveRecord::Base

	def next

	end

	def create
		#product = Product.create(name: "Product Name", description: "Product Description", price: 100)
		product = Product.new
			product.name = "Product Name"
			product.description = "Product description"
			product.price = 100
		product.save
	end

	def read
		product = Product.all
	end

	def getFirst
		product = Product.first
	end


end
