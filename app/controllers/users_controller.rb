class UsersController < ApplicationController

  def show
    @coursesCreated= current_user.courses
    @coursesTaken = current_user.courses_taken
  end
end
