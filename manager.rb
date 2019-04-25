class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    puts "Email sent"
  end

  def give_all_raises
    @employees.each do |employee| 
      employee.give_annual_raise
    end 
  end 

  def fire_all_employees 
    @employees.each do |employee| 
      employee.active = false  
    end 
  end 
end


manager = Manager.new(
                      first_name: "Leslie",
                      last_name: "Knope",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
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

p employee_1.active
p employee_2.active
manager.fire_all_employees
p employee_1.active
p employee_2.active

