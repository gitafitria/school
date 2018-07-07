class Schedule < ApplicationRecord
  belongs_to :lecture
  belongs_to :teacher
  has_many :schedule_students

  validates :lecture_id, :teacher_id, uniqueness: { scope: [:lecture_id, :teacher_id] }


end
