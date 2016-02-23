class ExercisesController < ApplicationController
  def show
  end

  def new
    @@id = params[:id]
    @exercise = Concept.find(@@id).exercises.new
  end

  def create
    @exercise = Concept.find(@@id).exercises.new(exercise_params)

    if @exercise.save
      redirect_to concept_path(@exercise.concept)
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
  def exercise_params
    params.require(:exercise).permit(:name,:content,:answer)
  end
end
