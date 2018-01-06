Rails.application.routes.draw do
  resources :blogs

  root to: 'abode#homepage'

end
