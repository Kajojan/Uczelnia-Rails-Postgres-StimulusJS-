class CoursesController < ApplicationController
  before_action :require_teacher, only: [:new, :create]
  before_action :authenticate_user!, only: [:show]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @student_course = StudentCourse.find_by(
    student: current_user.id,
    course: @course
    )
    @grade = @student_course&.grades
    @students = @course.students
  end

  def new
    @course = Course.new
  end

  def create 
    @name = params[:course][:name]
    @code = params[:course][:code]

    @new_course = Course.new(name: @name, code: @code, teacher: current_user)
    if @new_course.save
      redirect_to course_path(@new_course)
    else
      render :new
    end
  end

end
