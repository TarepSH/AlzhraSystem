require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Activities", with: @student.activities_id
    fill_in "Address", with: @student.address
    fill_in "Age", with: @student.age
    fill_in "Attendings", with: @student.attendings_id
    fill_in "Classroom", with: @student.classroom_id
    fill_in "Dateofbritgh", with: @student.dateofbritgh
    fill_in "Fathername", with: @student.fathername
    fill_in "Fname", with: @student.fname
    fill_in "Linephone", with: @student.linephone
    fill_in "Lname", with: @student.lname
    fill_in "Memorizationpage", with: @student.memorizationpage_id
    fill_in "Memorizationparts", with: @student.memorizationparts_id
    fill_in "Mobilephone", with: @student.mobilephone
    fill_in "Point", with: @student.point
    fill_in "Schoolclass", with: @student.schoolclass
    fill_in "Schoolname", with: @student.schoolname
    fill_in "Teacher", with: @student.teacher_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @student.activities_id
    fill_in "Address", with: @student.address
    fill_in "Age", with: @student.age
    fill_in "Attendings", with: @student.attendings_id
    fill_in "Classroom", with: @student.classroom_id
    fill_in "Dateofbritgh", with: @student.dateofbritgh
    fill_in "Fathername", with: @student.fathername
    fill_in "Fname", with: @student.fname
    fill_in "Linephone", with: @student.linephone
    fill_in "Lname", with: @student.lname
    fill_in "Memorizationpage", with: @student.memorizationpage_id
    fill_in "Memorizationparts", with: @student.memorizationparts_id
    fill_in "Mobilephone", with: @student.mobilephone
    fill_in "Point", with: @student.point
    fill_in "Schoolclass", with: @student.schoolclass
    fill_in "Schoolname", with: @student.schoolname
    fill_in "Teacher", with: @student.teacher_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
