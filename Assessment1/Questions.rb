
#Basic datatype

#First Question
#Question 1: Create a method that takes a string and an integer as input, and returns a new string that repeats the original string the given number of times.
	# Input: (“hello”, 3)
	# Output: hellohellohello

=begin
resultant_string = ""
puts "Enter string"
str = gets.chomp
puts "Enter Integer"
num = gets.chomp.to_i
i = 0
(1..num).each do |i|
    resultant_string += str
end
puts resultant_string
=end

#second Questions
#Question 2: Create a hash with different data types as values (string, integer, float, boolean). Write a method that returns the sum of all numeric values in the hash.


=begin
data = {
    "name" => "Raju",
    "age" => 30,
    "height" => 5.5,
    "is_student" => false,
    "weight" => 10
  }
  

  def count(hash)
    sum = 0
    hash.each_value do |value|
      if value.is_a?(Numeric)
        sum += value
      end
    end
    sum
  end
  
  puts count(data)  

  

  #2. class and object
  Question 1: Define a Car class with attributes make, model, and year. Write a method car_age that returns the age of the car.


  class Car
    def initialize(make, model, year)
        @make = make,
        @model = model,
        @year = year
    end
    def find_car_age
       print "The age of car is: ", (2024-@year)
    end
end
obj = Car.new("Toyota", "carmry", 2010)
obj.find_car_age
puts

#3. Variables - Local, Class, Instance, Global and Constants
Question 1: Create a class Counter with a class variable to keep track of the number of instances created. Add a method self.instance_count to return the number of instances.

#1 Question
class Counter
    @@count =0
    def initialize
        @@count += 1
    end
    def self.instance_count
        @@count
    end
end
obj1 = Counter.new
obj2 = Counter.new
obj3 = Counter.new
puts Counter.instance_count

#2 Question const and global variables
Question 2: Demonstrate the use of a global variable and a constant in a simple program.



$global_var = 10
class Variables
    def sum
         PI = 3.14
   puts PI * $global_var
    end
end
res = Variables.new
res.sum


#4. Operators
class Calculator
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end
    def cal
        sum = @num1 + @num2
        diff = @num1 - @num2
        product = @num1 * @num2
        quotient = @num1.to_f/@num2
        {sum: sum, diff: diff, product: product, quotient: quotient}
    end
end
s = Calculator.new(10,2)
puts s.cal


#Question 2: Write a method that takes two boolean values and returns the result of logical AND, OR, and NOT operations on them.

def logical_operators(a,b)
    and_of_operators = a && b
    or_of_operators = a || b
    not_of_a = !a
    not_of_b = !b
    [and_of_operators, or_of_operators, not_of_a, not_of_b]
end
puts logical_operators(true, false)



#5. Input and Output
#Question 1: Write a program that takes user input for a name and age, and prints a message saying "Hello, [name]! You are [age] years old."
puts"Enter your name: "
name = gets.chomp
puts "Enter your age: "
age = gets.chomp.to_i
class Intro
    def initialize(name , age)
        @name = name
        @age = age
    end
    def introduction
        puts "Hello, #@name! You are #@age years old."
    end
end
obj = Intro.new(name, age)
obj.introduction



#Question 2: Write a program that takes a list of numbers as input and prints the sum of the numbers.

def find_sum(num)
    sum = 0
    num.each do |n|
        sum+=n
    end
    sum
end
puts "Enter number list"
input = gets.chomp
number = input.split.map(&:to_i)
res = find_sum(number)
puts res
=end

#6. Comments
#Question 1: Write a method that calculates the factorial of a number. Include both single-line and multi-line comments explaining the code.
# This method calculates the factorial of a given number.
def factorial(num)
    result = 1
    #Iterate from 1 to num and multiply the result by each number
    (1..num).each do |i|
        result*=i
    end
    #return the final result
    result
end
ans = factorial(5)
puts "factorial of 5 is #{ans}"
=begin
The `factorial` method takes a single argument `n`, which is the number for which we want to calculate the factorial.
1. The variable `result` is initialized to 1 because the factorial of 0 is defined to be 1.
2. We then use a range `(1..n)` to iterate from 1 to `n` (inclusive).
3. In each iteration, we multiply `result` by the current number `i`.
4. Finally, we return `result`, which now contains the factorial of `n`.
=end
