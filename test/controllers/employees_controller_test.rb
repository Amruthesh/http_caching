require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { name: @employee.name, salary: { fixed: @employee.fixed, variable: @employee.variable }, company_id: @company.id }
    end

    assert_redirected_to company_path(id: @company.id)
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { name: 'Name changed', company_id: @company.id }
    assert_redirected_to employee_path(id: @employee.id)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
