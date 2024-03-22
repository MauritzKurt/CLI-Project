class Employee 

  attr_accessor :id
  attr_accessor :name
  attr_accessor :role
  attr_accessor :old_name
  attr_accessor :old_role

  def initialize
    self.id = id
    self.name = name
    self.role = role
  end

  def employee_details
    return "Employee ID: #{id}, Name: #{name.capitalize}, Role: #{role}"
  end

  def employee_old_details
    return "Employee ID: #{id}, Name: #{old_name.capitalize}, Role: #{old_role}"
  end
end
