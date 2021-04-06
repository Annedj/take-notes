Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'toggle', to: 'application#toggle_theme'
  patch "positions/:id/move", to: "positions#move"

  resources :notes


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
