Rails.application.routes.draw do

  root to: 'abode#homepage'

  get 'blog/index', to: 'blog#index'
  get 'blog/create', to: 'blog#create'
  get 'blog/new', to: 'blog#new'
  get 'blog/destroy', to: 'blog#desroy'
  get 'blog/show', to: 'blog#show'

end
