class SessionsController < ApplicationController
  def new
    @@type = params[:type]
    if @@type == "instructor"
      @path = new_instructor_path
    else
      @path = new_student_path
    end
  end

  def create
    if @@type == "instructor"
      @instructor  = Instructor.find_by({name: params[:name]})
      if @instructor && @instructor.authenticate(params[:password])
        session[:instructor_id] = @instructor.id
        flash[:success] = "Welcome, #{@instructor.name}"
        redirect_to instructor_path(@instructor)
      else
        flash[:failure] = "Login unsuccessful"
        redirect_to new_session_path + "?type=instructor"
      end
    elsif @@type == "student"
      @student  = Student.find_by({name: params[:name]})
      if @student && @student.authenticate(params[:password])
        session[:student_id] = @student.id
        flash[:success] = "Welcome, #{@student.name}"
        redirect_to root_path
      else
        flash[:failure] = "Login unsuccessful"
        redirect_to new_session_path + "?type=student"
      end
    else
      flash[:failure] = "Login unsuccessful"
      redirect_to root_path
    end
  end

  def destroy
    if params[:type] == "instructor"
      session[:instructor_id] = nil
    elsif params[:type] == "student"
      session[:student_id] = nil
    end
    redirect_to root_path
  end
end
