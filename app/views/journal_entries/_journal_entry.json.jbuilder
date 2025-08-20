json.extract! journal_entry, :id, :user_id, :title, :content, :image, :mood_label, :sentiment_score, :emotional_label, :created_at, :updated_at
json.url journal_entry_url(journal_entry, format: :json)
