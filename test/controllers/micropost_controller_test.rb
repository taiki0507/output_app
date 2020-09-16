require 'test_helper'

class MicropostControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get micropost_new_url
    assert_response :success
  end

end
