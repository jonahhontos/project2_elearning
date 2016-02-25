class ConceptsController < ApplicationController
  def show
    @concept = Concept.find(params[:id])
  end

  def next
    @concept = Concept.find(params[:id])
    if @concept.exercises.count > 0
      @concept.exercises.each do |e|
        unless current_student.progress.exercises.include? e
          # current_student.progress.exercises << e
          redirect_to exercise_path(e)
          return
          break
        end
      end
    end
    @concept.course.concepts.each do |c|
      unless current_student.progress.concepts.include? c
        current_student.progress.concepts << c
        redirect_to concept_path(c)
        return
        break
      end
    end
    redirect_to course_path(@concept.course)
  end

  def new
    @@id = params[:id]
    @concept = Course.find(@@id).concepts.new
  end

  def create
    @concept = Course.find(@@id).concepts.new(concept_params)

    if @concept.save
      redirect_to course_path(@concept.course)
    else
      render :new
    end
  end

  def edit
    @concept = Concept.find(params[:id])
  end

  def update
    @concept = Concept.find(params[:id])

    if @concept.update_attributes(concept_params)
      redirect_to course_path(@concept.course)
    else
      redirect_to edit_path(@concept)
    end
  end

  def destroy
    c = Concept.find(params[:id]).course
    Concept.find(params[:id]).destroy
    redirect_to course_path(c)
  end

  private
  def concept_params
    params.require(:concept).permit(:name,:content)
  end
end
