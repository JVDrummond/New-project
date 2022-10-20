require 'test_helper'

class CategoryesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categoryes_index_url
    assert_response :success
  end

end
