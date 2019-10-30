require 'test_helper'

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get member_new_url
    assert_response :success
  end

end
