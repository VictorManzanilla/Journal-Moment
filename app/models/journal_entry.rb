# == Schema Information
#
# Table name: journal_entries
#
#  id              :bigint           not null, primary key
#  content         :text
#  date            :date             not null
#  emotional_label :string
#  image           :string
#  mood_label      :string
#  sentiment_score :decimal(, )
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_journal_entries_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class JournalEntry < ApplicationRecord
  belongs_to :user
  has_many :conversation_ais, dependent: :destroy

  # NOTE: Would love to see your uncommented code deleted or you should leave a note about what you're planning to do with this code in the future for your future self.
  
  # validates :mood_label, presence: true
  # validates :date, uniqueness: { scope: :user_id, message: "You've already added mood for today." }
end
