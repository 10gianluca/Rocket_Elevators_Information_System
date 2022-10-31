require 'test_helper'

class BuildingsDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buildings_detail = buildings_details(:one)
  end

  test "should get index" do
    get buildings_details_url
    assert_response :success
  end

  test "should get new" do
    get new_buildings_detail_url
    assert_response :success
  end

  test "should create buildings_detail" do
    assert_difference('BuildingsDetail.count') do
      post buildings_details_url, params: { buildings_detail: {  } }
    end

    assert_redirected_to buildings_detail_url(BuildingsDetail.last)
  end

  test "should show buildings_detail" do
    get buildings_detail_url(@buildings_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_buildings_detail_url(@buildings_detail)
    assert_response :success
  end

  test "should update buildings_detail" do
    patch buildings_detail_url(@buildings_detail), params: { buildings_detail: {  } }
    assert_redirected_to buildings_detail_url(@buildings_detail)
  end

  test "should destroy buildings_detail" do
    assert_difference('BuildingsDetail.count', -1) do
      delete buildings_detail_url(@buildings_detail)
    end

    assert_redirected_to buildings_details_url
  end
end
