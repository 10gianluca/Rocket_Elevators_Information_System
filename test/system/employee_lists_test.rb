require "application_system_test_case"

class EmployeeListsTest < ApplicationSystemTestCase
  setup do
    @employee_list = employee_lists(:one)
  end

  test "visiting the index" do
    visit employee_lists_url
    assert_selector "h1", text: "Employee Lists"
  end

  test "creating a Employee list" do
    visit employee_lists_url
    click_on "New Employee List"

    fill_in "Email", with: @employee_list.email
    fill_in "First name", with: @employee_list.first_name
    fill_in "Last name", with: @employee_list.last_name
    fill_in "Title", with: @employee_list.title
    click_on "Create Employee list"

    assert_text "Employee list was successfully created"
    click_on "Back"
  end

  test "updating a Employee list" do
    visit employee_lists_url
    click_on "Edit", match: :first

    fill_in "Email", with: @employee_list.email
    fill_in "First name", with: @employee_list.first_name
    fill_in "Last name", with: @employee_list.last_name
    fill_in "Title", with: @employee_list.title
    click_on "Update Employee list"

    assert_text "Employee list was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee list" do
    visit employee_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee list was successfully destroyed"
  end
end
