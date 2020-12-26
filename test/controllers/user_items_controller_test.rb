require 'test_helper'

class UserItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_items_new_url
    assert_response :success
  end

  test "should get create" do
    get user_items_create_url
    assert_response :success
  end

end
