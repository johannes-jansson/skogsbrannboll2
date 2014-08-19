require 'test_helper'

class StrikesControllerTest < ActionController::TestCase
  setup do
    @strike = strikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strike" do
    assert_difference('Strike.count') do
      post :create, strike: { burn: @strike.burn, full: @strike.full, in: @strike.in, onehand: @strike.onehand, twohand: @strike.twohand }
    end

    assert_redirected_to strike_path(assigns(:strike))
  end

  test "should show strike" do
    get :show, id: @strike
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strike
    assert_response :success
  end

  test "should update strike" do
    patch :update, id: @strike, strike: { burn: @strike.burn, full: @strike.full, in: @strike.in, onehand: @strike.onehand, twohand: @strike.twohand }
    assert_redirected_to strike_path(assigns(:strike))
  end

  test "should destroy strike" do
    assert_difference('Strike.count', -1) do
      delete :destroy, id: @strike
    end

    assert_redirected_to strikes_path
  end
end
