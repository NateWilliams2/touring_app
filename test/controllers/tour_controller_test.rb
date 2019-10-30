require 'test_helper'

class TourControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tour_new_url
    assert_response :success
  end

end
