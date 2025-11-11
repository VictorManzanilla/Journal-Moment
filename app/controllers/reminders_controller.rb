class RemindersController < ApplicationController
  

  def run
    DailyReminderJob.perform_later
    render json: {status: "ok", message: "Reminder job enqueued"}
  end
end
