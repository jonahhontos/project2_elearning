class SessionsController < ApplicationController
  def new
  end

  def create
    @instructor  = Instructor.find_by({name: params[:name]})
    if @instructor && @instructor.authenticate(params[:password])
      session[:instructor_id] = @instructor.id
      flash[:success] = "Welcome, #{@instructor.name}"
      redirect_to instructor_path(@instructor)
    else
      flash[:failure] = "Login unsuccessful"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:instructor_id] = nil
    redirect_to root_path
  end
end
