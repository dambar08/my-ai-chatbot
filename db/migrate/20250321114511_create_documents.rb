class CreateDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.text :title, null: false
      t.text :content
      t.string :kind, default: "text"
      t.timestamps
    end

    add_index :documents, :created_at, unique: true
  end
end
