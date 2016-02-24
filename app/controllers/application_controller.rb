class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_instructor, :instructor_logged_in?, :current_student, :student_logged_in?

  def current_instructor
    @current_instructor ||= Instructor.find(session[:instructor_id]) if session[:instructor_id]
  end

  def instructor_logged_in?
    !!current_instructor
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def student_logged_in?
    !!current_student
  end

  def authorize
    redirect_to new_session_path unless instructor_logged_in?
  end
end
