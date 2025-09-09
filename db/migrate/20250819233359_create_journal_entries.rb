class CreateJournalEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :journal_entries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :image
      t.string :mood_label
      t.decimal :sentiment_score
      t.string :emotional_label

      t.timestamps
    end
  end
end
