require 'test_helper'

class GuestHousesControllerTest < ActionController::TestCase
  setup do
    @guest_house = guest_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guest_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest_house" do
    assert_difference('GuestHouse.count') do
      post :create, guest_house: { city_id: @guest_house.city_id, name: @guest_house.name, stars_count: @guest_house.stars_count }
    end

    assert_redirected_to guest_house_path(assigns(:guest_house))
  end

  test "should show guest_house" do
    get :show, id: @guest_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest_house
    assert_response :success
  end

  test "should update guest_house" do
    patch :update, id: @guest_house, guest_house: { city_id: @guest_house.city_id, name: @guest_house.name, stars_count: @guest_house.stars_count }
    assert_redirected_to guest_house_path(assigns(:guest_house))
  end

  test "should destroy guest_house" do
    assert_difference('GuestHouse.count', -1) do
      delete :destroy, id: @guest_house
    end

    assert_redirected_to guest_houses_path
  end
end
