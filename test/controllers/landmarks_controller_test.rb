require 'test_helper'

class LandmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get landmarks_edit_url
    assert_response :success
  end

  test "should get new" do
    get landmarks_new_url
    assert_response :success
  end

  test "should get show" do
    get landmarks_show_url
    assert_response :success
  end

  test "should get create" do
    get landmarks_create_url
    assert_response :success
  end

  test "should get update" do
    get landmarks_update_url
    assert_response :success
  end

end
