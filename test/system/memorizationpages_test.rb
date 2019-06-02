require "application_system_test_case"

class MemorizationpagesTest < ApplicationSystemTestCase
  setup do
    @memorizationpage = memorizationpages(:one)
  end

  test "visiting the index" do
    visit memorizationpages_url
    assert_selector "h1", text: "Memorizationpages"
  end

  test "creating a Memorizationpage" do
    visit memorizationpages_url
    click_on "New Memorizationpage"

    fill_in "Name", with: @memorizationpage.name
    fill_in "Students", with: @memorizationpage.students_id
    click_on "Create Memorizationpage"

    assert_text "Memorizationpage was successfully created"
    click_on "Back"
  end

  test "updating a Memorizationpage" do
    visit memorizationpages_url
    click_on "Edit", match: :first

    fill_in "Name", with: @memorizationpage.name
    fill_in "Students", with: @memorizationpage.students_id
    click_on "Update Memorizationpage"

    assert_text "Memorizationpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Memorizationpage" do
    visit memorizationpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memorizationpage was successfully destroyed"
  end
end
