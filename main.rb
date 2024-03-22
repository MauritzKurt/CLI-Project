require "./employee_class.rb"

def print_employees(employees)
  puts "Current employees: "
  employees.length.times do | x = 0 |
    puts employees[x].employee_details + ", "
  x += 1
  end 
end
employees = []
id_counter = 0
looper = "y"
while looper == "y"
  puts "Please decide your choice:\n
  add: Add a new employee!
  update: Update an existing employee!
  display: Display list of employees!
  delete: Delete an existing employee!"
  choice = gets.chomp

  case choice
  when "add"
    employee = Employee.new
    employee.id = id_counter
    id_counter += 1
    puts "Please enter a employee's name: "
    name = gets.chomp
    employee.name = name

    puts "Please enter a employee's role: "
    role = gets.chomp
    employee.role = role
    
    employees.push(employee)
    puts employee.employee_details + " has been added"
    # print_employees(employees)
  when "update"
    puts "Please enter id of employee you want to update"
    id = gets.chomp
    id = id.to_i
    employee = nil
    employees.each do | e |
      if id == e.id
        employee = e
        break
      end
    end

    unless employee
      puts "No such employee exists"
    else
      employee.old_name = employee.name
      puts "Please enter the employee's name: "
      name = gets.chomp
      employee.name = name
      employee.old_role = employee.role
      puts "Please enter the employee's role: "
      role = gets.chomp
      employee.role = role
      
      # employees.push(employee)
      puts  employee.employee_old_details + " has been updated to: \n" + employee.employee_details
      # print_employees(employees)
    end
  when "display"
    print_employees(employees)
  when "delete"
    puts "Please enter id: "
    id = gets.chomp
    id = id.to_i
    has_employee = false
    employees.each do | employee |
      if id == employee.id
        employees.delete(employee)
        puts  employee.employee_details + " has been deleted"
        has_employee = true
        break
      end
    end
    if has_employee == false
      puts "No such employee exists"
    # else
    #   print_employees(employees)
    end
    
  

  end
  puts "Would you like to continue? (y/n)"
  looper = gets.chomp
end
