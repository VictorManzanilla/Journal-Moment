class PagesController < ApplicationController
  # NOTE: Make sure to utilize only one application.html.erb. Just follow RCAV principles so you don't need to force your app to load specific templates.
  layout "landing_page", only: [:landing]
  skip_before_action :authenticate_user!, only: :landing

  def landing
  end
  
end
