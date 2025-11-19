class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.integer :teacher_id 
      t.foreign_key :users, column: :teacher_id 

      t.timestamps
    end
  end
end
 