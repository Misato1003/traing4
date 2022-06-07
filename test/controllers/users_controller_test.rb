require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get likes" do
    get users_likes_url
    assert_response :success
  end
end
