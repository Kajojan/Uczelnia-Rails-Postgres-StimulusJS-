class Course < ApplicationRecord
  belongs_to :teacher, class_name: "User"

  has_many :student_courses, foreign_key: :course_id
end
