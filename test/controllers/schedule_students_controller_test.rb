require 'test_helper'

class ScheduleStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_student = schedule_students(:one)
  end

  test "should get index" do
    get schedule_students_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_student_url
    assert_response :success
  end

  test "should create schedule_student" do
    assert_difference('ScheduleStudent.count') do
      post schedule_students_url, params: { schedule_student: { schedule_id: @schedule_student.schedule_id, student_id: @schedule_student.student_id } }
    end

    assert_redirected_to schedule_student_url(ScheduleStudent.last)
  end

  test "should show schedule_student" do
    get schedule_student_url(@schedule_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_student_url(@schedule_student)
    assert_response :success
  end

  test "should update schedule_student" do
    patch schedule_student_url(@schedule_student), params: { schedule_student: { schedule_id: @schedule_student.schedule_id, student_id: @schedule_student.student_id } }
    assert_redirected_to schedule_student_url(@schedule_student)
  end

  test "should destroy schedule_student" do
    assert_difference('ScheduleStudent.count', -1) do
      delete schedule_student_url(@schedule_student)
    end

    assert_redirected_to schedule_students_url
  end
end
