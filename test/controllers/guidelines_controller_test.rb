require 'test_helper'

class GuidelinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guidelines_index_url
    assert_response :success
  end

  test "should get new" do
    get guidelines_new_url
    assert_response :success
  end

  test "should get create" do
    get guidelines_create_url
    assert_response :success
  end

  test "should get edit" do
    get guidelines_edit_url
    assert_response :success
  end

  test "should get update" do
    get guidelines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get guidelines_destroy_url
    assert_response :success
  end

  test "should get show" do
    get guidelines_show_url
    assert_response :success
  end

end
