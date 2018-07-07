require "application_system_test_case"

class ScheduleStudentsTest < ApplicationSystemTestCase
  setup do
    @schedule_student = schedule_students(:one)
  end

  test "visiting the index" do
    visit schedule_students_url
    assert_selector "h1", text: "Schedule Students"
  end

  test "creating a Schedule student" do
    visit schedule_students_url
    click_on "New Schedule Student"

    fill_in "Schedule", with: @schedule_student.schedule_id
    fill_in "Student", with: @schedule_student.student_id
    click_on "Create Schedule student"

    assert_text "Schedule student was successfully created"
    click_on "Back"
  end

  test "updating a Schedule student" do
    visit schedule_students_url
    click_on "Edit", match: :first

    fill_in "Schedule", with: @schedule_student.schedule_id
    fill_in "Student", with: @schedule_student.student_id
    click_on "Update Schedule student"

    assert_text "Schedule student was successfully updated"
    click_on "Back"
  end

  test "destroying a Schedule student" do
    visit schedule_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schedule student was successfully destroyed"
  end
end
