class Car
	attr_accessor :car
	def initialize(sound)
		@sound = sound
	end

	def sound
		puts @sound

	end

end

class Race_car < Car
	
	def sound
		puts @sound + "brooom!"

	end
end

my_car = Car.new("BRRRR")
my_car.sound
race_car = Race_car.new("FIIUM")
race_car.sound