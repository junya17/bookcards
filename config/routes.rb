Rails.application.routes.draw do
  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/add', to: 'cards#add'
  post 'cards/add', to: 'cards#add'

  get 'cards/find', to: 'cards#find'
  post 'cards/find', to: 'cards#find'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'

  get 'cards/show'
  get 'cards/:id', to: 'cards#show'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
