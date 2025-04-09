class Suggestion < ApplicationRecord
  belongs_to :user
  belongs_to :document

  validates :original_text, :suggested_text, :description, :document_created_at, presence: true
end
