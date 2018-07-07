class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.date :dob
      t.boolean :is_valid
      t.integer :semester

      t.timestamps
    end
  end
end
