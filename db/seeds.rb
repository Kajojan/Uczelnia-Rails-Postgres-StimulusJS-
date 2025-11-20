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

student2 = User.find_or_create_by(email: "pawel@test.com") do |user|
  user.first_name = "PawełStudent"
  user.last_name  = "Kowalski"
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
sc2 = StudentCourse.find_or_create_by(student: student2, course: course1)


grades = [
  { value: 3, grade_desc: "Kolokwium" },
  { value: 4.5, grade_desc: "Aktywność" },
  { value: 5, grade_desc: "Prezentacja" },
  { value: 2, grade_desc: "Klokwium2" }
]

grades.each do |g|
  Grade.find_or_create_by(student_course: sc, value: g[:value]) do |grade|
    grade.grade_desc = g[:grade_desc]
  end
end

grades.each do |g|
  Grade.find_or_create_by(student_course: sc2, value: g[:value]) do |grade|
    grade.grade_desc = g[:grade_desc]
  end
end


User.find_or_create_by(email: "admin@test.com") do |user|
  user.first_name = "admin"
  user.last_name  = "admin"
  user.password   = "123456"
  user.role       = "admin"
end
