require 'test_helper'

class CurrentsControllerTest < ActionController::TestCase
  setup do
    @current = currents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current" do
    assert_difference('Current.count') do
      post :create, current: {  }
    end

    assert_redirected_to current_path(assigns(:current))
  end

  test "should show current" do
    get :show, id: @current
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current
    assert_response :success
  end

  test "should update current" do
    patch :update, id: @current, current: {  }
    assert_redirected_to current_path(assigns(:current))
  end

  test "should destroy current" do
    assert_difference('Current.count', -1) do
      delete :destroy, id: @current
    end

    assert_redirected_to currents_path
  end
end
