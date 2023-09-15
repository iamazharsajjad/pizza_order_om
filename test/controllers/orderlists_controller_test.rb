require "test_helper"

class OrderlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderlist = orderlists(:one)
  end

  test "should get index" do
    get orderlists_url
    assert_response :success
  end

  test "should get new" do
    get new_orderlist_url
    assert_response :success
  end

  test "should create orderlist" do
    assert_difference("Orderlist.count") do
      post orderlists_url, params: { orderlist: {  } }
    end

    assert_redirected_to orderlist_url(Orderlist.last)
  end

  test "should show orderlist" do
    get orderlist_url(@orderlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderlist_url(@orderlist)
    assert_response :success
  end

  test "should update orderlist" do
    patch orderlist_url(@orderlist), params: { orderlist: {  } }
    assert_redirected_to orderlist_url(@orderlist)
  end

  test "should destroy orderlist" do
    assert_difference("Orderlist.count", -1) do
      delete orderlist_url(@orderlist)
    end

    assert_redirected_to orderlists_url
  end
end
