class Animal
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    puts ''
    # puts "IN THE CLASS ANIMAL, IM CREATING:   #{self.name}"
    @@all.push(self)
  end
  def self.all
    return @@all
  end
end
puts ''
puts '#############-----------------###############'
puts 'IN CLASS -- Animal -- IM CREATING MINI-MEs'
pumba_from_the_Animal_class = Animal.new("Pumba")
puts 'Animal.new("pumba_from_the_Animal_class")'
puts "Animal.name:  #{Animal.name}"
puts "simba.name:  #{pumba_from_the_Animal_class.name}"
puts ''

puts '#############-----------------###############'
puts 'IN CLASS -- Lion --  IM CREATING MINI-MEs'
puts ''

class Lion < Animal
  attr_accessor :name
  @@all = []
  @@pack = []

  def initialize(name)
    @name = name
    puts "IN THE CLASS LION, IM CREATING:  #{self.name}"
    @@all.push(self)
    @@pack.push(self.name)
  end

  def check_king(name)
    king = false
    puts ''
    puts "Mighty #{self.name}, Are you a king?"
    # if ("Simba")
    # if name == "Simba"
    # if name == "Simba" == true

    if name == "Simba"
      king = true
      puts "YEAH!  I'm a king!  I am #{self.name}, here me ROAR!"
    else
      puts "Damn! No.  I'm not a king!"

    end
  end
  def self.all
    return @@all
  end
end

# NOW LETS SEE IF ANY OF THIS WORKS:
pumba = Lion.new("Pumba")
simba = Lion.new("Simba")

pumba.check_king("Pumba")
simba.check_king("Simba")

puts ''
puts "Lion.all:  #{Lion.all}"

puts ''
puts "Lion.name:  #{Lion.name}"
puts "simba.name:  #{simba.name}"
puts "pumba.name:  #{pumba.name}"
puts ''
