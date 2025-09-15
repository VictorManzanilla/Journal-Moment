class RemoveUniqueIndexFromJournalEntries < ActiveRecord::Migration[7.1]
  def change
     remove_index :journal_entries, name: "index_journal_entries_on_user_id_and_date"
  end
end
