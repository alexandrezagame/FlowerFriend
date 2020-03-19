require 'test_helper'

class FlowershopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flowershops_index_url
    assert_response :success
  end

end
