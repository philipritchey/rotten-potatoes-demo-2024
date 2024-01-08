require "application_system_test_case"

class MoviegoersTest < ApplicationSystemTestCase
  setup do
    @moviegoer = moviegoers(:one)
  end

  test "visiting the index" do
    visit moviegoers_url
    assert_selector "h1", text: "Moviegoers"
  end

  test "should create moviegoer" do
    visit moviegoers_url
    click_on "New moviegoer"

    fill_in "Email", with: @moviegoer.email
    fill_in "Name", with: @moviegoer.name
    click_on "Create Moviegoer"

    assert_text "Moviegoer was successfully created"
    click_on "Back"
  end

  test "should update Moviegoer" do
    visit moviegoer_url(@moviegoer)
    click_on "Edit this moviegoer", match: :first

    fill_in "Email", with: @moviegoer.email
    fill_in "Name", with: @moviegoer.name
    click_on "Update Moviegoer"

    assert_text "Moviegoer was successfully updated"
    click_on "Back"
  end

  test "should destroy Moviegoer" do
    visit moviegoer_url(@moviegoer)
    click_on "Destroy this moviegoer", match: :first

    assert_text "Moviegoer was successfully destroyed"
  end
end
