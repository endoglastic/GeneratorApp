require 'test_helper'

class SingleHousingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_housing = single_housings(:one)
  end

  test "should get index" do
    get single_housings_url
    assert_response :success
  end

  test "should get new" do
    get new_single_housing_url
    assert_response :success
  end

  test "should create single_housing" do
    assert_difference('SingleHousing.count') do
      post single_housings_url, params: { single_housing: { description: @single_housing.description, title: @single_housing.title } }
    end

    assert_redirected_to single_housing_url(SingleHousing.last)
  end

  test "should show single_housing" do
    get single_housing_url(@single_housing)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_housing_url(@single_housing)
    assert_response :success
  end

  test "should update single_housing" do
    patch single_housing_url(@single_housing), params: { single_housing: { description: @single_housing.description, title: @single_housing.title } }
    assert_redirected_to single_housing_url(@single_housing)
  end

  test "should destroy single_housing" do
    assert_difference('SingleHousing.count', -1) do
      delete single_housing_url(@single_housing)
    end

    assert_redirected_to single_housings_url
  end
end
