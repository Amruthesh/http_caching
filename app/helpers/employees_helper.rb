module EmployeesHelper
  
  def company_select
    Company.all.map{ |company| [company.name, company.id] }
  end
  
end
