# == Schema Information
#
# Table name: emotions
#
#  id         :bigint           not null, primary key
#  date       :date
#  emotion    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_emotions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Emotion < ApplicationRecord
  belongs_to :user

  validates :mood_label, presence: true
  validates :date, uniqueness: { scope: :user_id, message: "already logged today" }
end
