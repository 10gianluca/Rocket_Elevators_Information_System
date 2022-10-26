require 'test_helper'

class EmployeeListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_list = employee_lists(:one)
  end

  test "should get index" do
    get employee_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_list_url
    assert_response :success
  end

  test "should create employee_list" do
    assert_difference('EmployeeList.count') do
      post employee_lists_url, params: { employee_list: { email: @employee_list.email, first_name: @employee_list.first_name, last_name: @employee_list.last_name, title: @employee_list.title } }
    end

    assert_redirected_to employee_list_url(EmployeeList.last)
  end

  test "should show employee_list" do
    get employee_list_url(@employee_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_list_url(@employee_list)
    assert_response :success
  end

  test "should update employee_list" do
    patch employee_list_url(@employee_list), params: { employee_list: { email: @employee_list.email, first_name: @employee_list.first_name, last_name: @employee_list.last_name, title: @employee_list.title } }
    assert_redirected_to employee_list_url(@employee_list)
  end

  test "should destroy employee_list" do
    assert_difference('EmployeeList.count', -1) do
      delete employee_list_url(@employee_list)
    end

    assert_redirected_to employee_lists_url
  end
end
