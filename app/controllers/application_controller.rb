class ApplicationController < ActionController::Base
  skip_forgery_protection
  before_action :authenticate_user!

   def after_sign_in_path_for(resource)
    journal_entries_path 
  end
end
