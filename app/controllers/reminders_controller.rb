class RemindersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def run
    DailyReminderJob.perform_later
    render json: {status: "ok", message: "Reminder job enqueued"}
  end
end
