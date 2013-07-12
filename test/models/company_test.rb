require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  
  test 'company name cnnot be blank' do
    @company = Company.new
    @company.save
    assert !@company.errors.blank?, 'Company name cannot be blank'
  end
  
  test 'can create a company' do
    @company = Company.new(name: 'Tavant Technologies')
    @company.save
    assert !@company.new_record?, 'Company should not be a new record'
  end
  
end
