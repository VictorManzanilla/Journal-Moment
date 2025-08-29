Rails.application.routes.draw do
 root "journal_entries#index"

  devise_for :users
  resources :journal_entries
  
 
  
end
