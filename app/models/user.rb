class User < ApplicationRecord
  has_secure_password

  has_many :courses, foreign_key: :teacher_id
  has_many :student_courses, foreign_key: :student_id
  has_many :grades, through: :student_courses
end
