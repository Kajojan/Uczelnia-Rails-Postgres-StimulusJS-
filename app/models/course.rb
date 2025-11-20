class Course < ApplicationRecord
  belongs_to :teacher, class_name: "User"

  has_many :student_courses
  
  has_many :students, through: :student_courses, source: :student
end
