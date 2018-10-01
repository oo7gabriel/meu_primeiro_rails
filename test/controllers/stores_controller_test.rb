require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stores_new_url
    assert_response :success
  end

  test "should get create" do
    get stores_create_url
    assert_response :success
  end

  test "should get edit" do
    get stores_edit_url
    assert_response :success
  end

  test "should get uptade" do
    get stores_uptade_url
    assert_response :success
  end

  test "should get destroy" do
    get stores_destroy_url
    assert_response :success
  end

end
