class CreateSuggestions < ActiveRecord::Migration[8.0]
  def change
    create_table :suggestions, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :document, null: false, foreign_key: true, type: :uuid
      t.datetime :document_created_at, null: false
      t.text :original_text, null: false
      t.text :suggested_text, null: false
      t.text :description, null: false
      t.boolean :is_resolved, null: false, default: false
      t.timestamps
    end

    add_foreign_key :suggestions, :documents, column: :document_created_at, primary_key: :created_at
  end
end
