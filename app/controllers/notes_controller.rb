class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    json_response(@notes)
  end

  def show
    json_response(@note)
  end

  def create
    @note = Note.create!(note_params)
    json_response(@note)
  end

  def destroy
    @note.destroy
    head :no_content
  end

  private
  def note_params
    params.permit(:tags, :group, :user_id, :content, :title, :alias_name)
  end

  def set_note
    @note = Note.find(params[:id])
  end
end
