require 'test_helper'

class ReceivedsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get receiveds_new_url
    assert_response :success
  end

  test "should get create" do
    get receiveds_create_url
    assert_response :success
  end

  test "should get show" do
    get receiveds_show_url
    assert_response :success
  end

  test "should get index" do
    get receiveds_index_url
    assert_response :success
  end

  test "should get edit" do
    get receiveds_edit_url
    assert_response :success
  end

  test "should get update" do
    get receiveds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get receiveds_destroy_url
    assert_response :success
  end

end
