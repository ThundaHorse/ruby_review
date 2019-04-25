require "./employee.rb"
require "./manager.rb"
require "./intern.rb" 

manager = Manager.new(
                      first_name: "Lincoln",
                      last_name: "Osiris",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
employee_1 = Employee.new(
                          first_name: "Al", 
                          last_name: "Pachino", 
                          salary: 100000, 
                          active: true
                          ) 
employee_2 = Employee.new(
                          first_name: "Jeff", 
                          last_name: "Portnoy", 
                          salary: 60000, 
                          active: true
intern = Intern.new(
                    first_name: "Kevin",
                    last_name: "Sandusky", 
                    salary: 10, 
                    active: true
                    ) 
