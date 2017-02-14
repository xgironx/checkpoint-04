# Checkpoint 04

> If you have not completed the survey yet,
please do so by the end of the day!

## Instructions

1. Fork this repo
2. Clone your fork
3. Fill in your answers by writing in the appropriate area or, for multiple-choice questions, placing an 'x' in the square brackets.
4. Add/Commit/Push your changes to Github.
5. Open a pull request.

For questions 1-4, you must test your code before filling in an answer. You can do this by creating and running your own `app.rb` file or using an online REPL (e.g., [repl.it](https://repl.it/)).

> **Note**: Only place your answer between backticks. Don't modify the backticks,
or the language specifier after them.

## Ruby Basics & Enumerables

### Question 1

Define a method called `offer_rose`, which should take one argument named `person`.

When called the method should `puts` "Would you take this rose, `person`, in exchange for giving an old beggar woman shelter from the bitter cold?"

Demonstrate calling the method, passing in "young prince" as the argument.

Write your code here...

```ruby
def offer_rose(person)
  puts "Would you take this rose, #{person}, in exchange for giving an old beggar woman shelter from the bitter cold?"
  return "#{@person.capitalize}"
  # return "#{@person.capitalize}"
end

offer_rose("young prince, Beauregard")
```

### Question 2

Assume the following hash...

```ruby
town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}
```

Using Ruby...
- Remove Belle from the town residents
- Add her to the list of guests in the castle.

Write your code here...

```ruby
town[:castle][:guests] << town[:residents][1]
town[:residents].delete_at(1)
town[:castle][:guests]
```

### Question 3

Assume you have an array of strings representing friend's names...

```ruby
friends = ["Chip Potts", "Cogsworth", "Lumière", "Mrs. Potts"]
```

Using `.each` and string interpolation, `puts` the following text...

```
Belle is friends with Chip Potts
Belle is friends with Cogsworth
Belle is friends with Lumière
Belle is friends with Mrs. Potts
```

Write your code here...

```ruby
friends.each do |friend|
  puts "Belle is friends with #{friend}"
end
```

## Ruby OOP

### Question 4

Create ruby classes for `Animal` and `Lion`. Each `Animal` should have...
- A `name` attribute
- A `greet` instance method
- The ability to "get" and "set" `name`

Create a new `Animal` instance with the name "Pumba".

Make the `Lion` inherit from the `Animal` class. The `Lion` class should have a `pack` class variable that holds references to each instance created.

Each lion should have...
- A `king` attribute which is a boolean
- If the instance's `name` is "Simba" make the `king` attribute `true`

Create a new lion instance with the name "Simba".

```ruby
class Animal
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
                                                        puts ''
    @@all.push(self)
  end
  def self.all?          #THIS MAKES IT CLASS-METHOD LAND
    return @@all
  end
end
                            puts ''
puts '#############-----------------###############'
puts 'IN CLASS -- Animal -- IM CREATING MINI-MEs'
pumba_from_the_Animal_class = Animal.new("Pumba")
puts 'Animal.new("pumba_from_the_Animal_class")'
puts "pumba_from_the_Animal_class.name:  #{pumba_from_the_Animal_class.name}"
                            puts ''

puts '#############-----------------###############'
puts 'IN CLASS -- Lion --  IM CREATING MINI-MEs'
                            puts ''

class Lion < Animal
  attr_accessor :name
  @@all = []
  @@pack = []

  def self.all?             # THIS MAKES IT CLASS-METHOD LAND
    return @@all
  end

  def initialize(name)
    @name = name
    puts "IN THE CLASS LION, IM CREATING:  #{self.name}"
    @@all.push(self)
    @@pack.push(self.name)
    if name == "Simba"
      @king = true          # 'king' is INSTANCE-LEVEL VAR
      puts "YEAH!  I'm a king!  I am #{self.name}, here me ROAR!"
    else
      puts "Damn! No.  I'm not a king!"
      @king = false
    end
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
```

## SQL, Databases, and ActiveRecord

### Question 5

Describe what an ERD is, and why we create them for applications. Also give an
example what the attributes and relationships might be for the following
entities (no need to draw an ERD)...
- Genie
- Lamp
- Person
- Pet

Your answer...

```
<!-- ERD shows us relationships, shared attributes that we can link or keep only in one entity table.
I'm curious how ORM has affected ERDs significance since it abstracts DB design and makes it transparent, mebbe sorta mostly, to developers
- Genie:  
    magic?, or not magic
    has_many      lamps
    belongs_to    dog
- Lamp:  
    shiny?, not shiny
    belongs_to    Genie
- Person
    is a Genie?
- Pet
    is a dog
    has_many      Genies
    belongs_to    lamp -->
```

### Question 6

Describe what a schema is, and how we represent a one-to-many relationship in a
SQL database. If you need an example, you can use `people` and `wishes` models.

Your answer...

```
<!-- both related tables get FK to the other table
both related models get tagged as "has_many"
For an example, I might be a rancher that has_many beeves, or a beeve that has_many BGH injections every other day -->
```

### Question 7

Consider a class `Person` that inherits from `ActiveRecord::Base` and has the following schema...

```ruby
class Person < ActiveRecord::Base
end
```

```sql
CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  age INT NOT NULL
)
```

Write Ruby code that will create an instance of a person.

Your answer...

```ruby
Bob = Person.new(1, 'bob', 6)
```

Write Ruby code that will query for any person that is 15 years of age.

Your answer...

```ruby
Person.where("age = '15'")
```

### Sinatra

Write a route in Sinatra that will print "hello world" in the web browser at the following URL: `http://localhost:4567/oh_hello`

Your answer...

```ruby
Replace this with your answer
```
