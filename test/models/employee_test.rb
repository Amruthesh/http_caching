require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  
  test 'employee has to belong to a company' do
    @employee = Employee.new
    @employee.save
    assert !@employee.errors.blank?, 'Employee has to belong to a company'
  end
  
  test 'employee name cannot be empty' do
    @employee = Employee.new
    @employee.save
    assert @employee.errors.keys.include?(:name), 'Employee name cannot be empty'
  end
  
  test 'employee can be created' do
    @company = Company.create(name: 'Tavant Technologies')
    @employee = Employee.new(name: 'Amruthesh', company_id: @company.id)
    @employee.save
    assert !@employee.new_record?, 'Employee cannot be a new record'
  end
  
end
