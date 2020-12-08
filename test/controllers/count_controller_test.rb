require 'test_helper'

class CountControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get count_show_url
    assert_response :success
  end

end
