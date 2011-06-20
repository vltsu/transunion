require 'test_helper'

class CartypesControllerTest < ActionController::TestCase
  setup do
    @cartype = cartypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartype" do
    assert_difference('Cartype.count') do
      post :create, :cartype => @cartype.attributes
    end

    assert_redirected_to cartype_path(assigns(:cartype))
  end

  test "should show cartype" do
    get :show, :id => @cartype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cartype.to_param
    assert_response :success
  end

  test "should update cartype" do
    put :update, :id => @cartype.to_param, :cartype => @cartype.attributes
    assert_redirected_to cartype_path(assigns(:cartype))
  end

  test "should destroy cartype" do
    assert_difference('Cartype.count', -1) do
      delete :destroy, :id => @cartype.to_param
    end

    assert_redirected_to cartypes_path
  end
end
