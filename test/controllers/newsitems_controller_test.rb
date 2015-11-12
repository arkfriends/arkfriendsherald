require 'test_helper'

class NewsitemsControllerTest < ActionController::TestCase
  setup do
    @newsitem = newsitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsitem" do
    assert_difference('Newsitem.count') do
      post :create, newsitem: { duration: @newsitem.duration, ending: @newsitem.ending, filename: @newsitem.filename, filetype_id: @newsitem.filetype_id, priority: @newsitem.priority, staff_id: @newsitem.staff_id, starting: @newsitem.starting, title: @newsitem.title, zone_id: @newsitem.zone_id }
    end

    assert_redirected_to newsitem_path(assigns(:newsitem))
  end

  test "should show newsitem" do
    get :show, id: @newsitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsitem
    assert_response :success
  end

  test "should update newsitem" do
    patch :update, id: @newsitem, newsitem: { duration: @newsitem.duration, ending: @newsitem.ending, filename: @newsitem.filename, filetype_id: @newsitem.filetype_id, priority: @newsitem.priority, staff_id: @newsitem.staff_id, starting: @newsitem.starting, title: @newsitem.title, zone_id: @newsitem.zone_id }
    assert_redirected_to newsitem_path(assigns(:newsitem))
  end

  test "should destroy newsitem" do
    assert_difference('Newsitem.count', -1) do
      delete :destroy, id: @newsitem
    end

    assert_redirected_to newsitems_path
  end
end
