class CreateVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :votes, id: false do |t|
      t.references :chat, null: false, foreign_key: true, type: :uuid
      t.references :message, null: false, foreign_key: true, type: :uuid
      t.boolean :upvoted, null: false
      t.timestamps
    end

    add_index :votes, [ :chat_id, :message_id ], unique: true
  end
end
