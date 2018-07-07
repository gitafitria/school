class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :address
      t.date :dob
      t.boolean :is_valid

      t.timestamps
    end
  end
end
