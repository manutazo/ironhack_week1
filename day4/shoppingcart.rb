

class Items
	#se da acceso a a name y prime
	attr_accessor :name, :price
	# se inicializa el constructor
	def initialize(name, price)
		#name y price se almacenan para poder acceder mas tarde
	@name = name
	@price = price
	end
	#hacemos un put para que imprima los precios
	def puts_price
		puts price
	end
end
		#hacemos un metodo para almacenar los productos qur vayamos metiendo en el carrito de compra
class ShoppingCart
 	def initialize
 		@items = []
 	end
 		#creamos el metodo para añadir productos
 	def add_cart 
 		push []
 		#con push vamos metiendo el producto en el carrito
 		push.each do |suma|
 			item[]+[]
 		end
 	end
 	
 	def manu_car

 	end
end


#creamos productos
apple = Items.new("apple", 10)
orange_juice = Items.new("orange_juice", 5)
grapes = Items.new("grapes", 15)
banana = Items.new("banana", 20)
watermelon = Items.new("watermelon", 50)
#creamos el carrito de compra
manu_cart = ShoppingCart.new
#metemos productos al carrito de la compra
banana.puts_price
apple.puts_price

	