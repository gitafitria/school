class ScheduleStudent < ApplicationRecord
  belongs_to :student
  belongs_to :schedule

  validates :student_id, uniqueness: { scope: :schedule_id }
end
