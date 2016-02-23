class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to subjects_path
    else
      render :new
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      redirect_to subjects_path
    else
      redirect_to edit_subject_path
    end
  end

  def destroy

  end

  private
  def subject_params
    params.require(:subject).permit(:name)
  end
end
