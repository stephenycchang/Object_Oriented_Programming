class Person
  attr_accessor :name

  def initialize
    @name
  end

  def greeting
    "Hello #{@name}"
    
  end
end

class Students < Person
  def learn
    puts "I get it"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

Instructor1 = Instructor.new
Instructor1.name = "Chris"
puts Instructor1.greeting

Students1 = Students.new
Students1.name = "Cristina"
puts Students1.greeting

Instructor1.teach
Students1.learn


#There is no relation between the Students and Instructor class therefore the command cannot be used
Students1.teach
