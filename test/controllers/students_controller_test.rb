require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { activities_id: @student.activities_id, address: @student.address, age: @student.age, attendings_id: @student.attendings_id, classroom_id: @student.classroom_id, dateofbritgh: @student.dateofbritgh, fathername: @student.fathername, fname: @student.fname, linephone: @student.linephone, lname: @student.lname, memorizationpage_id: @student.memorizationpage_id, memorizationparts_id: @student.memorizationparts_id, mobilephone: @student.mobilephone, point: @student.point, schoolclass: @student.schoolclass, schoolname: @student.schoolname, teacher_id: @student.teacher_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { activities_id: @student.activities_id, address: @student.address, age: @student.age, attendings_id: @student.attendings_id, classroom_id: @student.classroom_id, dateofbritgh: @student.dateofbritgh, fathername: @student.fathername, fname: @student.fname, linephone: @student.linephone, lname: @student.lname, memorizationpage_id: @student.memorizationpage_id, memorizationparts_id: @student.memorizationparts_id, mobilephone: @student.mobilephone, point: @student.point, schoolclass: @student.schoolclass, schoolname: @student.schoolname, teacher_id: @student.teacher_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
