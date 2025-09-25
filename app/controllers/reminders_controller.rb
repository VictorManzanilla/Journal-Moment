class RemindersController < ApplicationController
  # NOTE: A lot of unnecessary spacing everywhere.

  def run
    DailyReminderJob.perform_later
    render json: {status: "ok", message: "Reminder job enqueued"}
  end
end
