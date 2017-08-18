require 'pry'

class Person
  attr_accessor :hair_color, :eye_color, :gender, :shoe_size, :name, :age, :height # this is where you put everything you want to access about the person
# attr_accessor creates getters and setters for each instance variable.
# attr_reader
# creates getters for us for the instance variables

# attr_writer
# creates setter methods for the instance variables

#class is also good for containing different methods
  def initialize(hair_color, eye_color, gender, shoe_size, name, age, height)
    @hair_color = hair_color
    @eye_color = eye_color
    @gender = gender
    @shoe_size = shoe_size
    @name = name
    @age = age
    @height = height
  end
  # if you define a method inside a vairable you have a instance method, must have an instance of a person.
  def is_old? #any tiem you see a method with a ? after it only returns a true or false value
    @age > 80 ? true : false #ternary value
    # the method below
    # if @age > 80
    #   true
    # else
    #   false
  end
  def info
    "Hello my name is... #{@name} and I am #{@age}"
  end
  # class method are methods that are called directly on the class
  def self.speak
    puts 'Hello im talkikng in english!'
  end
end
  # def name #this is the slow way to add each method.
  #     @name
  # end


#every time a new gets called the initialize methods gets called
person_1 = Person.new('brown', 'brown', 'male', 11.5, 'Thomas Ashton', 28, 6.25) #new instance of a person in a local variable person_1
person_2 = Person.new('brown', 'brown', 'male', 10, 'Nic Ashton', 32, 5.8) #new instance of a person in a local variable person_1


puts person_1.info
puts person_2.info
