#  require "sidekiq/web"

 Rails.application.routes.draw do
  root to: "pages#landing"


  devise_for :users
  resources :emotions, only: [:new, :create] do
    collection do
      get :thank_you
    end
  end

  resources :journal_entries do
    resources :conversation_ais, only: [:create]
  end
  
  # if Rails.env.development?
  #   mount LetterOpenerWeb::Engine, at: "/letter_opener"
  # end

  post "/reminders/run", to: "reminders#run"

  # mount Sidekiq::Web => "/sidekiq"

end
