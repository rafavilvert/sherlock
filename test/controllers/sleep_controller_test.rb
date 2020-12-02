require 'test_helper'

class SleepControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sleep_show_url
    assert_response :success
  end

end
