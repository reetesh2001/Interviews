require "test_helper"

class IntervsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get intervs_index_url
    assert_response :success
  end

  test "should get new" do
    get intervs_new_url
    assert_response :success
  end

  test "should get create" do
    get intervs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get intervs_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get intervs_edit_url
    assert_response :success
  end

  test "should get update" do
    get intervs_update_url
    assert_response :success
  end
end
