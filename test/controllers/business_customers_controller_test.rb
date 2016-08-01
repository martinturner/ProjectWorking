require 'test_helper'

class BusinessCustomersControllerTest < ActionController::TestCase
  setup do
    @business_customer = business_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_customer" do
    assert_difference('BusinessCustomer.count') do
      post :create, business_customer: { business_id: @business_customer.business_id, customer_id: @business_customer.customer_id }
    end

    assert_redirected_to business_customer_path(assigns(:business_customer))
  end

  test "should show business_customer" do
    get :show, id: @business_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_customer
    assert_response :success
  end

  test "should update business_customer" do
    patch :update, id: @business_customer, business_customer: { business_id: @business_customer.business_id, customer_id: @business_customer.customer_id }
    assert_redirected_to business_customer_path(assigns(:business_customer))
  end

  test "should destroy business_customer" do
    assert_difference('BusinessCustomer.count', -1) do
      delete :destroy, id: @business_customer
    end

    assert_redirected_to business_customers_path
  end
end
