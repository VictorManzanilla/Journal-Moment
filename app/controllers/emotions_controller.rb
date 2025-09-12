class EmotionsController < ApplicationController
  before_action :authenticate_user!  

  def new
  end

  def create
    current_user.journal_entries.create!(
      title: "Daily Emotion Log",
      content: params[:emotion]  
    )

    redirect_to thank_you_emotions_path
  end

  def thank_you
  end
end
