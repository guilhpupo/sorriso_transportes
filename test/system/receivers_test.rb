require "application_system_test_case"

class ReceiversTest < ApplicationSystemTestCase
  setup do
    @receiver = receivers(:one)
  end

  test "visiting the index" do
    visit receivers_url
    assert_selector "h1", text: "Receivers"
  end

  test "should create receiver" do
    visit receivers_url
    click_on "New receiver"

    fill_in "Address", with: @receiver.address
    fill_in "Name", with: @receiver.name
    click_on "Create Receiver"

    assert_text "Receiver was successfully created"
    click_on "Back"
  end

  test "should update Receiver" do
    visit receiver_url(@receiver)
    click_on "Edit this receiver", match: :first

    fill_in "Address", with: @receiver.address
    fill_in "Name", with: @receiver.name
    click_on "Update Receiver"

    assert_text "Receiver was successfully updated"
    click_on "Back"
  end

  test "should destroy Receiver" do
    visit receiver_url(@receiver)
    click_on "Destroy this receiver", match: :first

    assert_text "Receiver was successfully destroyed"
  end
end
