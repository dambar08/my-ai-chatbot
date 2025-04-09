class Api::SuggestionsController < Api::ApplicationController
  def index
    @suggestions = Suggestion.where(document_id: params[:document_id])
    respond_with(@suggestions)
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    if @suggestion.save
      format.json { render :show, status: :created, location: @suggestion }
    else
      format.json { render json: @suggestion.errors, status: :unprocessable_entity }
    end
  end

  private
  def suggestion_params
  end

  def set_suggestion
    @suggestion = Suggestion.find(params.expect(:id))
  end

  def suggestion_params
    params.fetch(:suggestion, {}).permit(:document_id, :document_created_at, :original_text, :suggested_text, :description, :is_resolved)
  end
end
