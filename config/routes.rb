Rails.application.routes.draw do
  resources :journal_entries
  devise_for :users
 root to: "journal_entries#index"
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
