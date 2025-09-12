class AddUniqueIndexToJournalEntries < ActiveRecord::Migration[7.1]
  def change
      add_index :journal_entries, [:user_id, :date], unique: true
  end
end
