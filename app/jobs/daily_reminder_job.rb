class DailyReminderJob < ApplicationJob
  queue_as :default

    def perform
      User.find_each do |user|
        ReminderMailer.daily_reminder(user).deliver_now
      end
    end
end
