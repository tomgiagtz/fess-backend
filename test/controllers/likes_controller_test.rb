require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get likes_create_url
    assert_response :success
  end

  test "should get update" do
    get likes_update_url
    assert_response :success
  end

  test "should get delete" do
    get likes_delete_url
    assert_response :success
  end

end
