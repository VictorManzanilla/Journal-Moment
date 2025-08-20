# == Schema Information
#
# Table name: conversation_ais
#
#  id               :bigint           not null, primary key
#  content          :text
#  sender           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  journal_entry_id :bigint           not null
#
# Indexes
#
#  index_conversation_ais_on_journal_entry_id  (journal_entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (journal_entry_id => journal_entries.id)
#
class ConversationAi < ApplicationRecord
  belongs_to :journal_entry
end
