class ReminderMailer < ApplicationMailer
  default from: "no-reply@yourapp.com"

  def daily_reminder(user)
    @user = user
    @url  = new_emotion_url(token: user.signed_id(purpose: :reminder, expires_in: 1.hour))
    mail(to: @user.email, subject: "How are you feeling today?")
  end


end
