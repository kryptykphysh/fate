require 'test_helper'

class AspectsControllerTest < ActionController::TestCase
  setup do
    @aspect = aspects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aspects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aspect" do
    assert_difference('Aspect.count') do
      post :create, aspect: { title: @aspect.title, type: @aspect.type }
    end

    assert_redirected_to aspect_path(assigns(:aspect))
  end

  test "should show aspect" do
    get :show, id: @aspect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aspect
    assert_response :success
  end

  test "should update aspect" do
    put :update, id: @aspect, aspect: { title: @aspect.title, type: @aspect.type }
    assert_redirected_to aspect_path(assigns(:aspect))
  end

  test "should destroy aspect" do
    assert_difference('Aspect.count', -1) do
      delete :destroy, id: @aspect
    end

    assert_redirected_to aspects_path
  end
end
