class NotesController < ApplicationController
  before_action :set_note, only: %i[edit update destroy]

  def index
    @notes = current_user.notes.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user = current_user
    if @note.save
      redirect_to notes_path
    else
      flash[:alert] = 'Note could not be created'
      render :new
    end
  end

  def edit
  end

  def update
    @note.update(note_params)
    if @note.save
      render @note
    else
      flash[:alert] = 'Note could not be updated'
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content)
  end
end
