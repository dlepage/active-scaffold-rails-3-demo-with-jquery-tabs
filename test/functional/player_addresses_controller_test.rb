require 'test_helper'

class PlayerAddressesControllerTest < ActionController::TestCase
  setup do
    @player_address = player_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_address" do
    assert_difference('PlayerAddress.count') do
      post :create, :player_address => @player_address.attributes
    end

    assert_redirected_to player_address_path(assigns(:player_address))
  end

  test "should show player_address" do
    get :show, :id => @player_address.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @player_address.to_param
    assert_response :success
  end

  test "should update player_address" do
    put :update, :id => @player_address.to_param, :player_address => @player_address.attributes
    assert_redirected_to player_address_path(assigns(:player_address))
  end

  test "should destroy player_address" do
    assert_difference('PlayerAddress.count', -1) do
      delete :destroy, :id => @player_address.to_param
    end

    assert_redirected_to player_addresses_path
  end
end
