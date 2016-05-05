class Cake 
	def initialize(flavor)
		@flavor = flavor


	end
	def flavor
		print @flavor
	end
end

my_stranwberry = Cake.new("stranwberry")
my_cream = Cake.new("cream")
my_chocolate = Cake.new("chocolate")

a = my_stranwberry.flavor
b = my_cream.flavor


my_second_car = Car.new("booom!", "blue"º