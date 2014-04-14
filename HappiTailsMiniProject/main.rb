require "pry"

require_relative "data"
require_relative "animal"
require_relative "client"
require_relative "shelter"

puts "Welcome to the HappiTails Amimal Shelter! \n"

puts "A. Display all animals \n
B. Display all clients \n
C. Create an animal \n
D. Create a client \n
E. Adopt an animal \n
F. Return an animal \n
Q. Quit"

response = gets.chomp.upcase

while response != "Q"
case response

 when "A" 
  $shelter.display_animals

 when "B"
  $shelter.display_clients

 when "C"
    puts "Enter the Name of the animal"
    name = gets.chomp
    puts "What is the age"
    age = gets.chomp
    puts "What gender do you want"
    gender = gets.chomp
    puts "What species of animal"
    species = gets.chomp
    new_animal = Animal.new(name, age, gender, species)
    $shelter.animals[name] = new_animal

  when "D" 
	  puts "What is your clients name"
	  name = gets.chomp
	  puts "What is your clients age"
	  age = gets.chomp
	  puts "What is your cients gender"
	  gender = gets.chomp
	  puts " How many kids does your client have"
	  children = gets.chomp
	  new_client = Client.new(name, age, gender, children)
	  $shelter.client[name] = new_client

# to adopt a pet
	when "E" 
		$shelter.adopt

# to Return a pet
	when "F"
		$shelter.return

	when "Q"
end

puts "A. Display all animals \n
B. Display all clients \n
C. Create an animal \n
D. Create a client \n
E. Adopt an animal \n
F. Return an animal \n
Q. Quit"
response = gets.chomp.upcase

end



