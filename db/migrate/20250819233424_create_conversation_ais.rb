class CreateConversationAis < ActiveRecord::Migration[7.1]
  def change
    create_table :conversation_ais do |t|
      t.references :journal_entry, null: false, foreign_key: true
      t.string :sender
      t.text :content

      t.timestamps
    end
  end
end
