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
  end

  def update
  end

  def destroy
  end

  private
  def concept_params
    params.require(:concept).permit(:name,:content)
  end
end
