require 'test_helper'

class HoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoody = hoodies(:one)
  end

  test "should get index" do
    get hoodies_url
    assert_response :success
  end

  test "should get new" do
    get new_hoody_url
    assert_response :success
  end

  test "should create hoody" do
    assert_difference('Hoody.count') do
      post hoodies_url, params: { hoody: { brand: @hoody.brand, description: @hoody.description, price: @hoody.price, size: @hoody.size, title: @hoody.title } }
    end

    assert_redirected_to hoody_url(Hoody.last)
  end

  test "should show hoody" do
    get hoody_url(@hoody)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoody_url(@hoody)
    assert_response :success
  end

  test "should update hoody" do
    patch hoody_url(@hoody), params: { hoody: { brand: @hoody.brand, description: @hoody.description, price: @hoody.price, size: @hoody.size, title: @hoody.title } }
    assert_redirected_to hoody_url(@hoody)
  end

  test "should destroy hoody" do
    assert_difference('Hoody.count', -1) do
      delete hoody_url(@hoody)
    end

    assert_redirected_to hoodies_url
  end
end
