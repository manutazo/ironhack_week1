class Car
	def initialize(sound, color, cities)
		@sound = sound
		@color = color
		@cities = cities
	end

	def honk
		#puts "broom"
		puts @sound
	end

	def gofoward
		# go!
	end

	def self.turn_left
		#puts "giramos a la izquierda"

	end

 	def turnwheel(dir)
 		if dir != 'right' 
 			self.turn_left
 		else 
 			puts "algo"
 		end
 	end

	def city
		puts @cities
	end

	def color
		#puts @color
	end
end

# my_car = Car.new("meeeck!", "red")
# my_car.honk
# my_car.color

my_second_car = Car.new("booom!", "blue", ["madrid", "barcelona", "paris", "londres"])
my_second_car.honk
my_second_car.color
my_second_car.city