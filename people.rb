class People
	attr_accessor :name
	attr_reader :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

my_people = People.new("manuel", "19")
puts "My name is #{my_people.name}, my age is #{my_people.age}"