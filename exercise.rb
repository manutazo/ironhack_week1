puts "What is the source file?"
name = gets.chomp
IO.write("source1.txt",name )
puts "What is the destination file?"
destination = gets.chomp
IO.write("source2.txt",destination)
