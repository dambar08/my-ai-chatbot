json.extract! suggestion, :id, :user_id, :document_id, :document_created_at, :original_text, :suggested_text, :description, :is_resolved, :created_at, :updated_at
json.url api_document_suggestions_url(suggestion, format: :json)
