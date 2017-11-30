require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get order_view_url
    assert_response :success
  end

end
