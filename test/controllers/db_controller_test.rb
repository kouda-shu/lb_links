require 'test_helper'

class DbControllerTest < ActionDispatch::IntegrationTest
  test "should get user_index" do
    get db_user_index_url
    assert_response :success
  end

  test "should get link_index" do
    get db_link_index_url
    assert_response :success
  end

end
