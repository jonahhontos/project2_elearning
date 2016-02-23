class CoursesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Instructor.find(1).courses.new(course_params)

    if @course.save
      redirect_to instructor_path(Instructor.find(1))
    else
      redirect_to new_course_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def course_params
    params.require(:course).permit(:name,:description)
  end
end
