require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_home_url
    assert_response :success
  end

  test "should get index" do
    get page_index_url
    assert_response :success
  end
end
