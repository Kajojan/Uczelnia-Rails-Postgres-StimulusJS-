class StudentCoursesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  

  def new
    @student_course= StudentCourse.new
  end

  def create
    @course = Course.find_by(id: params[:course_id])
    @student_course_new = StudentCourse.new(student_id: current_user.id, course_id: @course.id )
    if @student_course_new.save
      redirect_to courses_path(@course), notice: "Zapisany"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
