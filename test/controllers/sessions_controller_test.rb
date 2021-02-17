require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get session" do
    get sessions_session_url
    assert_response :success
  end
end
