class AddDateToJournalEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :journal_entries, :date, :date, default: -> {'CURRENT_DATE'}, null: false
  end
end
