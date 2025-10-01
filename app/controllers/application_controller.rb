class ApplicationController < ActionController::Base
  skip_forgery_protection
  layout :devise_layout
  before_action :authenticate_user!

   def after_sign_in_path_for(resource)
    journal_entries_path 
  end


  private

  def devise_layout
    if devise_controller?
      "devise"
    else 
      "application"
    end
  end
  
end
