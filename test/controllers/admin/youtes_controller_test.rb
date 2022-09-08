require "test_helper"

class Admin::YoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get admin_youtes_index,_url
    assert_response :success
  end

  test "should get show," do
    get admin_youtes_show,_url
    assert_response :success
  end

  test "should get edit," do
    get admin_youtes_edit,_url
    assert_response :success
  end

  test "should get update" do
    get admin_youtes_update_url
    assert_response :success
  end
end
