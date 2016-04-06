class Milkshake
	def initialize
		@base_price = 3
		@ingredients = [ ]
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)

	end

	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		puts total_price_of_milkshake
	end

end

class Ingredient
	attr_reader :price
	def initialize(name, price)
		@name = name
		@price = price

	end

end

banana = Ingredient.new("banana", 4)
chocolate = Ingredient.new("chocolate", 3)
banana_milkshake = Milkshake.new
ironhack_milkshake = Milkshake.new
ironhack_milkshake.add_ingredient(banana)
ironhack_milkshake.add_ingredient(chocolate)
banana_milkshake.add_ingredient(banana)

ironhack_milkshake.price_of_milkshake
banana_milkshake.price_of_milkshake

