class EmotionsController < ApplicationController
  layout "emotion_page", only: [:new, :thank_you]
  before_action :authenticate_user!  

  def new
  end

  def create
  entry = current_user.journal_entries.create!(
  mood_label: params[:emotion], 
  title: "Daily Emotion Log",
  date: Date.today
)

    redirect_to journal_entries_path
  end

  def thank_you
  end
end
