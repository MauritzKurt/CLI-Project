require 'minitest/autorun'
require './employee_class'

class TestEmployeeDetails < Minitest::Test
  def test_employee_details
    employee = Employee.new
    id = 0
    name = "NAME"
    role = "ROLE"
    employee.id = id
    employee.name = name
    employee.role = role
    employee_details_str = "Employee ID: #{id}, Name: #{name.capitalize}, Role: #{role}"
    assert_equal employee_details_str, employee.employee_details, "Employee details method failed"
  end
end
