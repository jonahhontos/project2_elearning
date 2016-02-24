class CoursesController < ApplicationController
  def index
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
    @subjects = Subject.all
  end

  def create
    @course = Instructor.find(session[:instructor_id]).courses.new(course_params)

    if @course.save
      redirect_to instructor_path(Instructor.find(session[:instructor_id]))
    else
      redirect_to new_course_path
    end
  end

  def edit
    @course = Course.find(params[:id])
    @subjects = Subject.all
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(course_params)
      redirect_to instructor_path(Instructor.find(session[:instructor_id]))
    else
      redirect_to edit_course_path
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to instructor_path(Instructor.find(session[:instructor_id]))
  end

  private
  def course_params
    params.require(:course).permit(:name,:description,:subject_id)
  end
end
