class Home
	attr_reader(:name, :city, :capacity, :price)
	def initialize(name, city, capacity, price)
	@name = name
	@city = city
	@capacity = capacity
	@price = price
	end
 	
 end 

	 homes = [
	  Home.new("Nizar's place", "San Juan", 2, 42),
	  Home.new("Fernando's place", "Seville", 5, 47),
	  Home.new("Josh's place", "Pittsburgh", 3, 41),
	  Home.new("Gonzalo's place", "Málaga", 2, 45),
	  Home.new("plaza mayor place", "madrid", 2, 45),
	  Home.new("Ariel's place", "San Juan", 4, 49),
	  Home.new("mayor strett","madrid", 2, 48),
	  Home.new("españa place", "hospitalet de llobregat", 3, 46),
	  Home.new("manuel strett", "madrid", 4, 48),
	  Home.new("plaza place", "oviedo", 3, 47),
	]

	 puts homes[0].name
	 puts homes[1].name
	 puts homes[2].name
	 puts homes[3].name
	 puts homes[4].name 
	 puts homes[5].name
	 puts homes[6].name
	 puts homes[7].name
	 puts homes[8].name
	 puts homes[9].name
	 puts homes[10].name 

	 

	homes.each do |home|
	#puts "#{home.name}'s place in #{home.city}"
	#puts "Price: #{home.price} a night" 
	end 

	cities = homes.map do |home|
	  home.city
	end

	#puts cities

	total_capacities = homes.reduce(0.0) do |sum, home|
	  sum + home.capacity
	end

	puts "The average capacity is:"
	puts total_capacities / homes.length

	homes.each_with_index do |home, index|
	#  puts "Home Number #{index + 1}: #{home.name}"
	end

	san_juan_homes = homes.select do |hm|
	  # Keep hm only if its city is "San Juan"
	  hm.city == "San Juan"
	  #puts 
	end
	#ver cual de las casas tiene una capacidad mayor de 4
	high_capacity_homes = homes.select do |home|
		home.capacity >= 4 
			end
	#hacer que solgo sala las que son true
	high_capacity_homes.each do |x|
		#puts x.name 
	end
	end
	#puts "The first home that costs €41 is:"
	#puts home_41_dollars.name

	sorted_lang = homes.sort {|a,b| b.price <=> a.price}

	sorted_lang.each do |x|
		#puts x.name
	end

	san_juan_homes = homes.select do |home|
  	home.city == "San Juan" 

	end

	san_juan_homes.each do |x|
	#puts x.name
	end