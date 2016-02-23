class ConceptsController < ApplicationController
  def show
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
  end

  private
  def concept_params
    params.require(:concept).permit(:name,:content)
  end
end
