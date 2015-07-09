require 'test_helper'

class PeripheralsControllerTest < ActionController::TestCase
  setup do
    @peripheral = peripherals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peripherals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peripheral" do
    assert_difference('Peripheral.count') do
      post :create, peripheral: { name: @peripheral.name }
    end

    assert_redirected_to peripheral_path(assigns(:peripheral))
  end

  test "should show peripheral" do
    get :show, id: @peripheral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peripheral
    assert_response :success
  end

  test "should update peripheral" do
    patch :update, id: @peripheral, peripheral: { name: @peripheral.name }
    assert_redirected_to peripheral_path(assigns(:peripheral))
  end

  test "should destroy peripheral" do
    assert_difference('Peripheral.count', -1) do
      delete :destroy, id: @peripheral
    end

    assert_redirected_to peripherals_path
  end
end
