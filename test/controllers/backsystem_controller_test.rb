require 'test_helper'

class BacksystemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backsystem_index_url
    assert_response :success
  end

end
