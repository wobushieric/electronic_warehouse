require 'test_helper'

class ChargeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get charge_new_url
    assert_response :success
  end

  test "should get charge" do
    get charge_charge_url
    assert_response :success
  end

end
