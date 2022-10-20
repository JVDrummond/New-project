require 'test_helper'

class MenuRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get menu_requests_show_url
    assert_response :success
  end

end
