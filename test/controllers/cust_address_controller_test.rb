require 'test_helper'

class CustAddressControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cust_address_index_url
    assert_response :success
  end

  test "should get new" do
    get cust_address_new_url
    assert_response :success
  end

  test "should get update" do
    get cust_address_update_url
    assert_response :success
  end

  test "should get delete" do
    get cust_address_delete_url
    assert_response :success
  end

end
