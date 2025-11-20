class UsersController < ApplicationController
  def index
  end

  def show
    @coursesCreated= current_user.courses
    @coursesTaken = current_user.courses_taken
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
