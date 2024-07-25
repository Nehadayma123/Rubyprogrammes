# Description:
# You are given a complex data structure, which is a nested hash containing information about various employees in a company. Each employee has a unique ID, and for each ID, there is a hash containing their details such as name, age, salary, department, and performance scores. The task is to perform the following operations on this data structure:
# Filter: Retain only employees who have a performance score above a certain threshold.
# Sort: Sort the remaining employees by multiple criteria: first by department alphabetically, then by salary in descending order, and finally by age in ascending order.
# Format: Convert the sorted data into a formatted string output where each employee's details are presented in a specific format.
# Output: Write the final result to a file.
# Input:
# A nested hash with employee details.
# A performance score threshold (integer).
# Output:
# A formatted string containing the filtered and sorted employee details written to a file.
# Example:
# Input:-
# employees = {
#   101 => {name: "Alice", age: 30, salary: 70000, department: "HR", performance: 85},
#   102 => {name: "Bob", age: 25, salary: 90000, department: "IT", performance: 95},
#   103 => {name: "Charlie", age: 35, salary: 120000, department: "IT", performance: 90},
#   104 => {name: "David", age: 40, salary: 60000, department: "Finance", performance: 70},
#   105 => {name: "Eve", age: 28, salary: 110000, department: "IT", performance: 99}
# }

# threshold = 80

# Output:-
# # Expected Output in a file:
# # "Department: HR
# #  Name: Alice, Age: 30, Salary: 70000
# # 
# # Department: IT
# #  Name: Eve, Age: 28, Salary: 110000
# #  Name: Charlie, Age: 35, Salary: 120000
# #  Name: Bob, Age: 25, Salary: 90000"

# Requirements:
# Use appropriate data types (strings, integers, hashes, arrays, symbols).
# Demonstrate the use of control statements (if-else, case-when, loops).
# Utilize iterators (each, map, select).
# Implement class and object concepts if needed.
# Make use of Ruby's array, string, and hash methods.
# Handle exceptions where necessary.
# Include comments and debugging statements.

class EmployeeProcessor
    attr_accessor :employees, :threshold
  
    def initialize(employees, threshold)
      @employees = employees
      @threshold = threshold
    end
  
    def filter_employees
      @employees.select { |id, details| details[:performance] > @threshold }
    end 
  
    def sort_employees(filtered_employees)
      filtered_employees.values.sort_by do |employee|
        [employee[:department], -employee[:salary], employee[:age]]
      end
    end
  
    def format_employees(sorted_employees)
      formatted_string = ""
      current_department = nil
  
      sorted_employees.each do |employee|
        if employee[:department] != current_department
          current_department = employee[:department]
          formatted_string += "Department: #{current_department}\n"
        end
        formatted_string += " Name: #{employee[:name]}, Age: #{employee[:age]}, Salary: #{employee[:salary]}\n"
      end
  
      formatted_string
    end
  
    def write_to_file(filename, formatted_string)
      File.open(filename, "w") do |file|
        file.write(formatted_string)
      end
    rescue => e
      puts "An error occurred: #{e.message}"
    end
  
    def process(filename)
      filtered_employees = filter_employees
      sorted_employees = sort_employees(filtered_employees)
      formatted_string = format_employees(sorted_employees)
      write_to_file(filename, formatted_string)
    end
  end
  
#   employees = {}
#   while true do
#     begin
#         puts "Enter employee ID or type 'done' to finish:"
#         input = gets.chomp
#         break if input == 'done'
#         id = Integer(input)
#         rescue ArgumentError
#         puts "Invalid input, please enter a valid number:"
#         retry
#       end
#       begin
#         puts "Enter employee name:"
#         name = gets.chomp.capitalize
#         rescue ArgumentError
#         puts "Invalid input, please enter a valid name:"
#         retry
#       end  
#       begin
#         puts "Enter employee age:"
#         input = gets.chomp
#         age = Integer(input)
#         rescue ArgumentError
#         puts "Invalid input, please enter a number:"
#         retry
#       end
#     begin
#         puts "Enter employee salary:"
#         input = gets.chomp
#         salary = Integer(input)
#         rescue ArgumentError
#         puts "Invalid input, please enter a number:"
#         retry
#       end

#     begin
#         puts "Enter employee department:"
#         department = gets.chomp.capitalize()
#         if !department.is_a?(String)
#             raise ArgumentError, "Invalid input"
#         end
#         rescue ArgumentError
#             puts "Invalid input, please enter a number:"
#             retry
#          end
#     begin
#         puts "Enter employee performance score:"
#         input = gets.chomp.to_i
#         performance = Integer(input)
#         rescue ArgumentError
#         puts "Invalid input, please enter a number:"
#         retry
#       end
           
#   employees[id] = { name: name, age: age, salary: salary, department: department, performance: performance }
# end


employees = {
      101 => {name: "Alice", age: 30, salary: 70000, department: "HR", performance: 85},
      102 => {name: "Bob", age: 25, salary: 90000, department: "IT", performance: 95},
      103 => {name: "Charlie", age: 35, salary: 120000, department: "IT", performance: 90},
      104 => {name: "David", age: 40, salary: 60000, department: "Finance", performance: 70},
      105 => {name: "Eve", age: 28, salary: 110000, department: "IT", performance: 99}
    }
puts "Enter the performance threshold:"
threshold = gets.chomp.to_i
processor = EmployeeProcessor.new(employees, threshold)
filename = "outputfile.txt"
processor.process(filename)

puts "Filtered and sorted employee details have been written to #{filename}."