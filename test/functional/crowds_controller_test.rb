require 'test_helper'

class CrowdsControllerTest < ActionController::TestCase
  setup do
    @crowd = crowds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crowds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crowd" do
    assert_difference('Crowd.count') do
      post :create, crowd: { description: @crowd.description, image: @crowd.image, price: @crowd.price, title: @crowd.title, user_id: @crowd.user_id }
    end

    assert_redirected_to crowd_path(assigns(:crowd))
  end

  test "should show crowd" do
    get :show, id: @crowd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crowd
    assert_response :success
  end

  test "should update crowd" do
    put :update, id: @crowd, crowd: { description: @crowd.description, image: @crowd.image, price: @crowd.price, title: @crowd.title, user_id: @crowd.user_id }
    assert_redirected_to crowd_path(assigns(:crowd))
  end

  test "should destroy crowd" do
    assert_difference('Crowd.count', -1) do
      delete :destroy, id: @crowd
    end

    assert_redirected_to crowds_path
  end
end
