require 'test_helper'

class DanceStylesControllerTest < ActionController::TestCase
  setup do
    @dance_style = dance_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dance_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dance_style" do
    assert_difference('DanceStyle.count') do
      post :create, dance_style: { description: @dance_style.description, name: @dance_style.name }
    end

    assert_redirected_to dance_style_path(assigns(:dance_style))
  end

  test "should show dance_style" do
    get :show, id: @dance_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dance_style
    assert_response :success
  end

  test "should update dance_style" do
    patch :update, id: @dance_style, dance_style: { description: @dance_style.description, name: @dance_style.name }
    assert_redirected_to dance_style_path(assigns(:dance_style))
  end

  test "should destroy dance_style" do
    assert_difference('DanceStyle.count', -1) do
      delete :destroy, id: @dance_style
    end

    assert_redirected_to dance_styles_path
  end
end
