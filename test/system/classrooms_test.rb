require "application_system_test_case"

class ClassroomsTest < ApplicationSystemTestCase
  setup do
    @classroom = classrooms(:one)
  end

  test "visiting the index" do
    visit classrooms_url
    assert_selector "h1", text: "Classrooms"
  end

  test "creating a Classroom" do
    visit classrooms_url
    click_on "New Classroom"

    fill_in "Book", with: @classroom.book
    fill_in "Level", with: @classroom.level
    fill_in "Name", with: @classroom.name
    fill_in "Teacher", with: @classroom.teacher_id
    click_on "Create Classroom"

    assert_text "Classroom was successfully created"
    click_on "Back"
  end

  test "updating a Classroom" do
    visit classrooms_url
    click_on "Edit", match: :first

    fill_in "Book", with: @classroom.book
    fill_in "Level", with: @classroom.level
    fill_in "Name", with: @classroom.name
    fill_in "Teacher", with: @classroom.teacher_id
    click_on "Update Classroom"

    assert_text "Classroom was successfully updated"
    click_on "Back"
  end

  test "destroying a Classroom" do
    visit classrooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classroom was successfully destroyed"
  end
end
