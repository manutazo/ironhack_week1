class Car
	attr_reader :whels
	def initialize(whels, sound)
		@whels = whels
		@sound = sound
	end 
end

my_car1 = Car.new(4, "broom")
my_car2 = Car.new(12, "bruuum")
my_car3 = Car.new(6, "sruum")


class Parking 
	def initialize
		@cars = []
	end

	def add_car(param_car)
		@cars.push(param_car)
	end

	def calculate
		total_wheels = 0
		@cars.each do |car|
			 car.whels
				
			end
	end
end
 my_parking = Parking.new
  my_parking.add_car(my_car1)
  my_parking.add_car(my_car2)
  my_parking.add_car(my_car3)

  my_parking.calculate

