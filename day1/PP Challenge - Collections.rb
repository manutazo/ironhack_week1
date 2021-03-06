18class ProgrammingLanguage
  attr_accessor :name, :age, :type
  attr_reader :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

#array_printer(array_of_languages)

#puts "The programming languages aged one year are: "

aged_languages = array_of_languages.map do |language|
	language.age += 1
	language
end

sorted_lang = aged_languages.sort {|a,b| b.age <=> a.age}
#array_printer(aged_languages)
#array_printer(sorted_lang)

sorted_lang.delete_if {|x| x.name == "Java"}
#array_printer(sorted_lang)

shuffled_lang = sorted_lang.shuffle
#array_printer(shuffled_lang)

sort2 = sorted_lang.drop(1)
#array_printer(sort2)

lang = sorted_lang.fetch(1)
#puts "Language: #{lang.name} |  Age: #{lang.age} |  Type System: #{lang.type}"

#puts sorted_lang.include?(lang)


