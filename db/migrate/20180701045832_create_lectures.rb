class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :description
      t.boolean :is_valid

      t.timestamps
    end
  end
end
