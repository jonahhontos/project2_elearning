class WelcomeController < ApplicationController
  def index
    if student_logged_in?
      redirect_to student_path(current_student)
    elsif instructor_logged_in?
      redirect_to instructor_path(current_instructor)
    else
      redirect_to new_session_path + "?type=student"
    end
  end
end
