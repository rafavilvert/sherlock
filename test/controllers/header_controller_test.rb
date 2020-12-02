require 'test_helper'

class HeaderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get header_index_url
    assert_response :success
  end

end
