class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages, id: :uuid do |t|
      t.references :chat, null: false, foreign_key: true, type: :uuid
      t.string :role, null: false
      t.json :parts, null: false
      t.timestamps
    end
  end
end
