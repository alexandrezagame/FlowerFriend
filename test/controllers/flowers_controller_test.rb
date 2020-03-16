require 'test_helper'

class FlowersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flowers_index_url
    assert_response :success
  end

  test "should get show" do
    get flowers_show_url
    assert_response :success
  end

  test "should get create" do
    get flowers_create_url
    assert_response :success
  end

end
