require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get display" do
    get home_display_url
    assert_response :success
  end

end
