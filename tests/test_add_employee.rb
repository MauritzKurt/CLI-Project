require 'minitest/autorun'
require './employee_class'

class TestEmployee < Minitest::Test
  def test_add
    employee = Employee.new
    employee.name = "TEST"
    assert_equal "TEST", employee.name, "Employee name set failed"
  end
end
