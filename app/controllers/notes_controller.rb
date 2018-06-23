class NotesController < ApplicationController

  def create
    note = Note.new(notes_params)
    if note.save
      render json: {
        status: 201,
        note: note
      }
    end
  end

  def index
    notes = Note.all
    render json: {
      status: 200, 
      notes: notes
    }
  end

  def show
    note = Note.find(params[:id])
    render json: {
      status: 200,
      note: note
    }
  end

  def update
    note = Note.update(notes_params)
    render json: {
      status: 200,
      note: note
    }
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
