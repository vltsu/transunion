require 'test_helper'

class CarrierCompaniesControllerTest < ActionController::TestCase
  setup do
    @carrier_company = carrier_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carrier_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carrier_company" do
    assert_difference('CarrierCompany.count') do
      post :create, :carrier_company => @carrier_company.attributes
    end

    assert_redirected_to carrier_company_path(assigns(:carrier_company))
  end

  test "should show carrier_company" do
    get :show, :id => @carrier_company.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @carrier_company.to_param
    assert_response :success
  end

  test "should update carrier_company" do
    put :update, :id => @carrier_company.to_param, :carrier_company => @carrier_company.attributes
    assert_redirected_to carrier_company_path(assigns(:carrier_company))
  end

  test "should destroy carrier_company" do
    assert_difference('CarrierCompany.count', -1) do
      delete :destroy, :id => @carrier_company.to_param
    end

    assert_redirected_to carrier_companies_path
  end
end
