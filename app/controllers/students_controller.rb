class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      @student.progress = Progress.create
      redirect_to new_session_path + "?type=student"
    else
      redirect_to new_student_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def student_params
    params.require(:student).permit(:name, :password)
  end
end
