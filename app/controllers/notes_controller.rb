class NotesController < ApplicationController

  def create
    note = Note.new(notes_params)
    if note.save
      render json: note
    end
  end

  def index
    notes = Note.all
    render json: notes
  end

  def show
    note = Note.find(params[:id])
    render json: note
  end

  def update
    note = Note.update(notes_params)
    render json: note
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
  end

  private

  def notes_params
    params.require(:note).permit(:title, :content)
  end

end
