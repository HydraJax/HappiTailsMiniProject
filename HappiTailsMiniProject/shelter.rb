
class Shelter
  attr_accessor :shelter, :address, :animals, :clients, :pets

  def initialize(shelter, address)
    @shelter = shelter
    @address = address
    @animals = {}
    @clients = {}
    @pets = {}
  end

def display_animals
  # animal = []
  $shelter.animals.each do |k, v|
  puts(v.to_s)
  end
  # return animal.join("\n")
end
	
def display_clients
  client = []
  @clients.each do |k, v|
  	client.push(v.to_s)
  end
  return client.join("\n")
end

def adopt
	puts "Enter a client that wants to adopt"
	client_2adopt = gets.chomp
	puts "enter a pet name"
	pet_2adopt = gets.chomp
# help with this
	@client[client_2adopt].pets[pet_2adopt] = @animals[pet_2adopt]
	@animal.delete(pet_2adopt)
end

def return
	puts "Who is returning the pet"
	client_return = gets.chomp
	puts "What is the name of the pet you want to return"
	animal_return = gets.chomp
	@animals[animal_return]

@animal.push(pet_2adopt)
end

  def to_s
    "#{@shelter} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
  end
end