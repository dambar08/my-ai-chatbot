class CreateChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats, id: :uuid do |t|
      t.text :title, null: false
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :visibility, null: false, default: "private"
      t.timestamps
    end
  end
end
