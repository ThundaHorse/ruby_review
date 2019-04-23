# employee_1 = ["Helen", "Bonom Carter", 80000, true] 
# employee_2 = ["Peter", "G", 60000, true] 

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year." 
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."

# employee_1 = {
#   "first_name" => "Helen", 
#   "last_name" => "Bonom Cater", 
#   "salary" => 80000, 
#   "active" => true 
# }

# employee_2 = {
#   first_name: "Abe", 
#   last_name: "Kim",
#   salary: 1000000, 
#   active: true 
# }

# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year." 
# puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]}." 


class Employee 
  # Read attributes and grab values without a defined method, returns specific value or item 
  attr_reader :first, :last, :salary, :active
  # Argument variables, data passing into the method 
  def initialize(first, last, salary, active) 
    @first = first 
    @last = last 
    @salary = salary 
    @active = active 
  end 

  # Also a reader method 
  # def first 
  # @first 
  # end 

  def print_info
    "#{@first} #{@last} makes #{@salary} a year."
  end 

  def give_annual_raise 
    @salary *= 1.05
  end 

  # writer method to change value outside of the class, write method to allow it to happen 
  def active=(new_val)
    @active = new_val 
  end 

end 


employee_1 = Employee.new("Abe", "Kim", 100000, true) 
employee_2 = Employee.new("Peter", "Gibbons", 60000, true) 

p employee_1.active
p employee_1.active = false 
p employee_1.active 

