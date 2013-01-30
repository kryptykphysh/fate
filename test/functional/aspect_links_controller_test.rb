require 'test_helper'

class AspectLinksControllerTest < ActionController::TestCase
  setup do
    @aspect_link = aspect_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aspect_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aspect_link" do
    assert_difference('AspectLink.count') do
      post :create, aspect_link: { aspected_id: @aspect_link.aspected_id, aspected_type: @aspect_link.aspected_type, note: @aspect_link.note }
    end

    assert_redirected_to aspect_link_path(assigns(:aspect_link))
  end

  test "should show aspect_link" do
    get :show, id: @aspect_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aspect_link
    assert_response :success
  end

  test "should update aspect_link" do
    put :update, id: @aspect_link, aspect_link: { aspected_id: @aspect_link.aspected_id, aspected_type: @aspect_link.aspected_type, note: @aspect_link.note }
    assert_redirected_to aspect_link_path(assigns(:aspect_link))
  end

  test "should destroy aspect_link" do
    assert_difference('AspectLink.count', -1) do
      delete :destroy, id: @aspect_link
    end

    assert_redirected_to aspect_links_path
  end
end
