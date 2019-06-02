require "application_system_test_case"

class MemorizationpartsTest < ApplicationSystemTestCase
  setup do
    @memorizationpart = memorizationparts(:one)
  end

  test "visiting the index" do
    visit memorizationparts_url
    assert_selector "h1", text: "Memorizationparts"
  end

  test "creating a Memorizationpart" do
    visit memorizationparts_url
    click_on "New Memorizationpart"

    fill_in "Name", with: @memorizationpart.name
    fill_in "Students", with: @memorizationpart.students_id
    click_on "Create Memorizationpart"

    assert_text "Memorizationpart was successfully created"
    click_on "Back"
  end

  test "updating a Memorizationpart" do
    visit memorizationparts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @memorizationpart.name
    fill_in "Students", with: @memorizationpart.students_id
    click_on "Update Memorizationpart"

    assert_text "Memorizationpart was successfully updated"
    click_on "Back"
  end

  test "destroying a Memorizationpart" do
    visit memorizationparts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memorizationpart was successfully destroyed"
  end
end
