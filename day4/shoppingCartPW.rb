class ShoppingCart
def initalize(a, b)
     @items = []
  end
  def add_item(item)
  end
end

class Item
	def initalize(name,price)
		@name = name
		@price = price
	end

	def price
	end
end

class Houseware < Item
	def price
	end
end

class Fruit < Item
	def price
		puts price
	end
end

banana = Fruit.new("Banana", 10)
orangeJuice = Fruit.new("orange juice", 10)
rice = Fruit.new("rice", 10)
Vacuum Cleaner = Fruit.new("Vacuum Cleaner", 150)
Anchovies = Fruit.new("Anchovies", 2)
manu_cart = ShoppingCart.new
manu_cart.banana



Por defecto, los artículos tendrán ningún descuento.
Las frutas tienen ningún descuento durante los días de semana, pero los fines de semana tienen un descuento del 10%.
Artículos para el hogar no tienen ningún descuento a menos que su precio unitario es de más de 100 € / $ 100. Si el precio es superior a 100 € / $ 100, habrá un descuento del 5%.
