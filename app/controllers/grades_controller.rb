class GradesController < ApplicationController
  def index
  end

  def show
  end

  def new
      @grade = Grade.new
  end

  def create
    @course = Course.find(params[:course_id])
    @student_course = StudentCourse.find_by(course: @course, student_id: params[:student_id])
    @new_grade = Grade.new(student_course_id: @student_course.id, value: params[:grade][:value])
    if @new_grade.save
      redirect_to course_path(@course), notice: "Ocena zaktualizowana"
    else
      redirect_to course_path(@course), alert: "Nie udało się zaktualizować oceny"
    end
  end

  def edit
  end

  def update
    @course = Course.find(params[:course_id])
    @student_course = StudentCourse.find_by(course: @course, student_id: params[:student_id])
    @grade = @student_course.grades.find(params[:grade_id])

    if @grade.update(value: params[:grade])
      redirect_to course_path(@course), notice: "Ocena zaktualizowana"
    else
      redirect_to course_path(@course), alert: "Nie udało się zaktualizować oceny"
    end
  end

  def destroy
    Grade.find(params[:id]).destroy
  end
end
