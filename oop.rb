# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(words)
    puts "*~* #{words} *~*"
  end
end

hornhorse = Unicorn.new("Charlie")

hornhorse.say("We're going to a magical kingdom!")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
puts "========================="
class Vampire
  attr_reader :thirsty, :pet
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirsty = false
  end
end

vlad = Vampire.new("Vlad")

# Verify class and methods are working

vlad_condition = [
  vlad.thirsty,
  vlad.pet,
]

puts vlad_condition

vladimir = Vampire.new("Vladimir", "Spider")

vladimir.drink

vladimir_condition = [
  vladimir.thirsty,
  vladimir.pet,
]

puts vladimir_condition

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
puts "========================"

class Dragon
  attr_reader :is_hungry
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @times_eaten = 0
  end

  def eat
    @times_eaten = @times_eaten + 1
    if @times_eaten > 3
      @is_hungry = false
    else
      puts "#{@name} is still hungry"
    end
  end
end

puff = Dragon.new("Puff", "Frodo", "Red")

puts puff.is_hungry

puff.eat
puff.eat
puff.eat
puff.eat

puts puff.is_hungry


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
puts "========================"
class Hobbit
  attr_reader :has_ring, :is_adult, :is_old
  def initialize(name, disposition, age = 0, is_adult = false, is_old = false)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = is_adult
    @is_old = is_old
    @has_ring = if @name == "Frodo"
      true
    else
      false
    end
  end

  def celebrate_birthday
    @age = @age + 1

    if @age >= 101
      @is_old = true
      @is_adult = true
    elsif @age >= 33
      @is_adult = true
    end

  end
end



bilbo = Hobbit.new("Bilbo", "Ornery", 100, true, false)

p bilbo.is_old

bilbo.celebrate_birthday

p bilbo.is_old

p bilbo.has_ring

frodo = Hobbit.new("Frodo", "friendly", 32)

p frodo.is_adult

frodo.celebrate_birthday

p frodo.is_adult

p frodo.has_ring




#
