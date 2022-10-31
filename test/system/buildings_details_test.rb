require "application_system_test_case"

class BuildingsDetailsTest < ApplicationSystemTestCase
  setup do
    @buildings_detail = buildings_details(:one)
  end

  test "visiting the index" do
    visit buildings_details_url
    assert_selector "h1", text: "Buildings Details"
  end

  test "creating a Buildings detail" do
    visit buildings_details_url
    click_on "New Buildings Detail"

    click_on "Create Buildings detail"

    assert_text "Buildings detail was successfully created"
    click_on "Back"
  end

  test "updating a Buildings detail" do
    visit buildings_details_url
    click_on "Edit", match: :first

    click_on "Update Buildings detail"

    assert_text "Buildings detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Buildings detail" do
    visit buildings_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buildings detail was successfully destroyed"
  end
end
