require "./employee.rb"
require "./manager.rb"
require "./intern.rb" 


employee_1 = Actualize::Employee.new(
                          first_name: "Al", 
                          last_name: "Pachino", 
                          salary: 100000, 
                          active: true
                          ) 
employee_2 = Actualize::Employee.new(
                          first_name: "Jeff", 
                          last_name: "Portnoy", 
                          salary: 60000, 
                          active: true
                          )
manager_1 = Actualize::Manager.new(
                      first_name: "Lincoln",
                      last_name: "Osiris",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
intern_1 = Actualize::Intern.new(
                    first_name: "Kevin",
                    last_name: "Sandusky", 
                    salary: 10, 
                    active: true
                    )

employee_1.print_info
employee_2.print_info
manager_1.print_info
intern_1.print_info