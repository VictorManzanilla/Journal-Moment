class EmotionsController < ApplicationController
  layout "emotion_page", only: [:new, :thank_you]
  before_action :authenticate_user!  

  def new
  end

  def create
  entry = current_user.emotions.find_or_initialize_by(date: Date.today)
  entry.update!(mood_label: params[:emotion], title: "Daily Emotion Log")

    redirect_to thank_you_emotions_path
  end

  def thank_you
  end
end
