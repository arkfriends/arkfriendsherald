require 'test_helper'

class NewstypesControllerTest < ActionController::TestCase
  setup do
    @newstype = newstypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newstypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newstype" do
    assert_difference('Newstype.count') do
      post :create, newstype: { extension: @newstype.extension, jscript: @newstype.jscript, posttags: @newstype.posttags, pretags: @newstype.pretags, viewer: @newstype.viewer }
    end

    assert_redirected_to newstype_path(assigns(:newstype))
  end

  test "should show newstype" do
    get :show, id: @newstype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newstype
    assert_response :success
  end

  test "should update newstype" do
    patch :update, id: @newstype, newstype: { extension: @newstype.extension, jscript: @newstype.jscript, posttags: @newstype.posttags, pretags: @newstype.pretags, viewer: @newstype.viewer }
    assert_redirected_to newstype_path(assigns(:newstype))
  end

  test "should destroy newstype" do
    assert_difference('Newstype.count', -1) do
      delete :destroy, id: @newstype
    end

    assert_redirected_to newstypes_path
  end
end
