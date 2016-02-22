class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)

    if @instructor.save
      redirect_to instructors_path
    else
      redirect_to new_instructor_path
    end
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])

    if @instructor.update_attributes(instructor_params)
      redirect_to instructors_path
    else
      redirect_to edit_instructor_path
    end
  end

  def destroy
    Instructor.find(params[:id]).destroy()
    redirect_to instructors_path
  end

  private
  def instructor_params
    params.require(:instructor).permit(:name, :password)
  end
end
