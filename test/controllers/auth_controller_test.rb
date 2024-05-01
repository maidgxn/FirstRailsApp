require "test_helper"

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get sign-in" do
    get auth_sign-in_url
    assert_response :success
  end
end
