class Item
	attr_reader :price

	def initialize(name, price)
	@name = name
	@price = price_of_product
	end
 end

class Houseware < Item

	def price
		if @price > 100
		 @price * 0.90 
		end
		@price
	end
end

class Fruit < Item
	def price_of_product
		
	end
end

class Shoppingcart 
	def initialize
		@item = []

	end

	def add_item(item)
		@item.push(item)

	end

	def chekout
	total = 0
	@item.each do |item|
    	total += item.price 	
	end
	puts total

	end


end


banana = Fruit.new("banana", 10)
orange_juice = Fruit.new("orange_juice", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("vacuum_cleaner", 150)
anchovies = Item.new("anchovies", 2)
manu_car = Shoppingcart.new
manu_car.add_item(banana)
manu_car.add_item(orange_juice)
manu_car.add_item(rice)
manu_car.add_item(rice)
manu_car.add_item(vacuum_cleaner)
manu_car.chekout
