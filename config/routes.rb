Rails.application.routes.draw do

root to: 'abode#homepage'

get 'index', to: 'blogs#index'

end
