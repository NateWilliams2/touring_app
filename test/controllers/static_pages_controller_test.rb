require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get finances" do
    get static_pages_finances_url
    assert_response :success
  end

  test "should get calendar" do
    get static_pages_calendar_url
    assert_response :success
  end

  test "should get map" do
    get static_pages_map_url
    assert_response :success
  end

end
