require 'test_helper'

class VersionControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get version_show_url
    assert_response :success
  end

end
