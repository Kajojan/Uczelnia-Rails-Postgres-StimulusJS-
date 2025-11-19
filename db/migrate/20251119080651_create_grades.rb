class CreateGrades < ActiveRecord::Migration[8.0]
  def change
    create_table :grades do |t|
      t.integer :student_course_id
      t.decimal :value
      t.foreign_key :student_courses, column: :student_course_id 

      t.timestamps
    end
  end
end
