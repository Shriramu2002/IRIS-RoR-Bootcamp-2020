require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_index_url
    assert_response :success
  end

  test "should get about_me" do
    get page_about_me_url
    assert_response :success
  end
end
