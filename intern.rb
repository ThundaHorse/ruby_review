class Intern < Employee
  include Reportable
end 


intern = Intern.new(
                  first_name: "Jam",
                  last_name: "Jam",
                  salary: 30000,
                  active: true
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

intern.print_info