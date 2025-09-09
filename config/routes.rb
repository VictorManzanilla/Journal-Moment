Rails.application.routes.draw do
 root to: "journal_entries#index"

  devise_for :users

 
  resources :journal_entries do
    resources :conversation_ais, only: [:create]
  end
  
 
  
end
