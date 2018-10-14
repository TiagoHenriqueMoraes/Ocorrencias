require 'test_helper'

class OccurencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get occurences_index_url
    assert_response :success
  end

  test "should get new" do
    get occurences_new_url
    assert_response :success
  end

  test "should get create" do
    get occurences_create_url
    assert_response :success
  end

  test "should get edit" do
    get occurences_edit_url
    assert_response :success
  end

  test "should get update" do
    get occurences_update_url
    assert_response :success
  end

  test "should get show" do
    get occurences_show_url
    assert_response :success
  end

  test "should get destroy" do
    get occurences_destroy_url
    assert_response :success
  end

end
