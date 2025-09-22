class PagesController < ApplicationController
  layout "landing_page", only: [:landing]

  skip_before_action :authenticate_user!, only: :landing

  def landing
  end
end
