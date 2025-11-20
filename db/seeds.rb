teacher = User.find_or_create_by(email: "kajetan@test.com") do |user|
  user.first_name = "kajetanTeacher"
  user.last_name  = "jankowski"
  user.password   = "123456"
  user.role       = "teacher"
end

student = User.find_or_create_by(email: "jankowski@test.com") do |user|
  user.first_name = "kajetanStudent"
  user.last_name  = "jankowski"
  user.password   = "123456"
  user.role       = "student"
end

course1 = Course.find_or_create_by(code: "INF101") do |c|
  c.name = "Informatyka"
  c.teacher = teacher
end

course2 = Course.find_or_create_by(code: "MAT101") do |c|
  c.name = "Matematyka"
  c.teacher = teacher
end

course3 = Course.find_or_create_by(code: "PRO101") do |c|
  c.name = "Programowanie"
  c.teacher = teacher
end

course4 = Course.find_or_create_by(code: "FIZ101") do |c|
  c.name = "Fizyka"
  c.teacher = teacher
end

sc = StudentCourse.find_or_create_by(student: student, course: course1)



grades = [3, 4.5, 5, 2]

grades.each do |val|
  Grade.find_or_create_by(student_course: sc, value: val)
end
