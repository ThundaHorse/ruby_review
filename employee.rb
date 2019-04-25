class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ first_name } #{ last_name } makes #{ salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
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

p employee_2
p employee_1
