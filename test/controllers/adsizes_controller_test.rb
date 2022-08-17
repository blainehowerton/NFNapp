require "test_helper"

class AdsizesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get adsizes_edit_url
    assert_response :success
  end

  test "should get show" do
    get adsizes_show_url
    assert_response :success
  end

  test "should get new" do
    get adsizes_new_url
    assert_response :success
  end

  test "should get delete" do
    get adsizes_delete_url
    assert_response :success
  end

  test "should get index" do
    get adsizes_index_url
    assert_response :success
  end
end
