class Employee 
  # Access instances or variables 
  # Writers overrite an old attribute 
  # Reader also called getter, writer also called setter 
  attr_reader :first, :last, :salary, :active
  attr_writer :active, :salary, :first, :name 

  # Both reader/writers on one line 
  #attr_accessor

  # Argument variables, data passing into the method 
  def initialize(input_options) 
    @first = input_options[:first_name]
    @last = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end 

  def print_info
    "#{@first} #{@last} makes #{@salary} a year."
  end 

  def give_annual_raise 
    @salary *= 1.05
  end 

end

class Manager < Employee 
  def initialize(input_options)
    super(first_name: input_options[:first_name], salary: input_options[:salary])
    @employees = input_options[:employees]
  end 

  def send_report 
    puts "Sending email" 
    puts "Email sent" 
  end 

end 



employee_1 = Employee.new(
                          first_name: "Abe", 
                          last_name: "Kim", 
                          salary: 100000, 
                          active: true
                          ) 

employee_2 = Employee.new(
                          first_name: "Peter", 
                          last_name: "Gibbons", 
                          salary: 60000, 
                          active: true
                          ) 

manager_1 = Manager.new(
                        first_name: "Abraham",
                        last_name: "Yeet",
                        salary: 100000000,
                        active: true,
                        employees: [employee_1, employee_2]
                        )

p employee_2
p employee_1
p manager_1