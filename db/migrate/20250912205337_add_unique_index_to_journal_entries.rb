class AddUniqueIndexToJournalEntries < ActiveRecord::Migration[7.1]
  def change
      add_index :journal_entries, [:user_id, :date], unique: true
  end
end
JournalEntry
  .select("MIN(id) as id, user_id, date")
  .group("user_id, date")
  .each do |row|
    JournalEntry.where(user_id: row.user_id, date: row.date)
                .where.not(id: row.id)
                .delete_all
  end
