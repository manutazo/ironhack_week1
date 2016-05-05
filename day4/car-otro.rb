class Car
	attr_accessor :cities
	def initialize
		@cities = Array.new
	end
	# def add_city(city)
	# 	@cities.push(city)
	# 	@file = 'cities.txt'
	# end
	def add_city(city)
		@file = 'cities.txt'
		@cities_visited = IO.read(@file)
		IO.write(@file, @cities_visited+"\n"+city)
	end
end

new_car = Car.new
new_car.add_city("madrid")
new_car.add_city("barcelona")
new_car.add_city("miami")

puts new_car.cities