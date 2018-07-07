class CreateScheduleStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_students do |t|
      t.integer :schedule_id
      t.integer :student_id

      t.timestamps
    end
  end
end
