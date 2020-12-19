require 'test_helper'

class SwapappControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get swapapp_index_url
    assert_response :success
  end

end
