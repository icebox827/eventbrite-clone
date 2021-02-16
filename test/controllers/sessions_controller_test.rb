require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get Session" do
    get sessions_Session_url
    assert_response :success
  end
end
