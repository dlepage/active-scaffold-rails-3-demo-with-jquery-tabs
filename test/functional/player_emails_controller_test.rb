require 'test_helper'

class PlayerEmailsControllerTest < ActionController::TestCase
  setup do
    @player_email = player_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_email" do
    assert_difference('PlayerEmail.count') do
      post :create, :player_email => @player_email.attributes
    end

    assert_redirected_to player_email_path(assigns(:player_email))
  end

  test "should show player_email" do
    get :show, :id => @player_email.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @player_email.to_param
    assert_response :success
  end

  test "should update player_email" do
    put :update, :id => @player_email.to_param, :player_email => @player_email.attributes
    assert_redirected_to player_email_path(assigns(:player_email))
  end

  test "should destroy player_email" do
    assert_difference('PlayerEmail.count', -1) do
      delete :destroy, :id => @player_email.to_param
    end

    assert_redirected_to player_emails_path
  end
end
