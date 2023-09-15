require "application_system_test_case"

class OrderlistsTest < ApplicationSystemTestCase
  setup do
    @orderlist = orderlists(:one)
  end

  test "visiting the index" do
    visit orderlists_url
    assert_selector "h1", text: "Orderlists"
  end

  test "should create orderlist" do
    visit orderlists_url
    click_on "New orderlist"

    click_on "Create Orderlist"

    assert_text "Orderlist was successfully created"
    click_on "Back"
  end

  test "should update Orderlist" do
    visit orderlist_url(@orderlist)
    click_on "Edit this orderlist", match: :first

    click_on "Update Orderlist"

    assert_text "Orderlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Orderlist" do
    visit orderlist_url(@orderlist)
    click_on "Destroy this orderlist", match: :first

    assert_text "Orderlist was successfully destroyed"
  end
end
