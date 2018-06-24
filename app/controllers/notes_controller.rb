class NotesController < ApplicationController

  def create
    note = Note.new(notes_params)
    if note.save
      render json: note, status: 201
    else 
      render json: note.errors.full_messages
    end
  end

  def index
    notes = Note.all
    render json: notes, status: 200
  end

  def show
    note = Note.find(params[:id])
    render json: note, status: 200
  end

  def update
    note = Note.find(params[:id])
    if note.update(notes_params)
      render json: note, status: 200
    else 
      render json: note.errors.full_messages
    end
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render json: {
      status: 200,
      message: "Successfully deleted note."
    }
  end

  private

  def notes_params
    params.require(:note).permit(:title, :content)
  end

end
