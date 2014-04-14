
class Client 

  attr_accessor  :name, :age, :gender, :children, :pets

  def initialize (name, age, gender, children)
    @name = name
    @children = children
    @age = age
    @gender = gender
    @pets = {}
  end

  def to_s
  	"#{@name} is a #{@age} year old #{@gender} with #{@children} kids and #{@pets.length} pets"
  end

  def display_pets
    pet_info = []
    @pets.each do |k,v| 
      pet_info.push(v.to_s)
    end
  pet_info.join("\n")

  end



end