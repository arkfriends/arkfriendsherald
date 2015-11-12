require 'test_helper'

class OperatinghoursControllerTest < ActionController::TestCase
  setup do
    @operatinghour = operatinghours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operatinghours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operatinghour" do
    assert_difference('Operatinghour.count') do
      post :create, operatinghour: { dow: @operatinghour.dow, ending: @operatinghour.ending, starting: @operatinghour.starting }
    end

    assert_redirected_to operatinghour_path(assigns(:operatinghour))
  end

  test "should show operatinghour" do
    get :show, id: @operatinghour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operatinghour
    assert_response :success
  end

  test "should update operatinghour" do
    patch :update, id: @operatinghour, operatinghour: { dow: @operatinghour.dow, ending: @operatinghour.ending, starting: @operatinghour.starting }
    assert_redirected_to operatinghour_path(assigns(:operatinghour))
  end

  test "should destroy operatinghour" do
    assert_difference('Operatinghour.count', -1) do
      delete :destroy, id: @operatinghour
    end

    assert_redirected_to operatinghours_path
  end
end
