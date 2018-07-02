Rails.application.routes.draw do

  get 'review/index'
  get 'review', to: 'review#index'

  get 'review/add'
  post 'review/add', to: 'review#create'

  get 'review/edit/:id', to: 'review#edit'
  patch 'review/edit/:id', to: 'review#update'

  get 'review/delete/:id', to: 'review#delete'
  get 'review/:id', to: 'review#show'

  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/add', to: 'cards#add'
  post 'cards/add', to: 'cards#add'

  get 'cards/find', to: 'cards#find'
  post 'cards/find', to: 'cards#find'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#update'

  get 'cards/delete/:id', to: 'cards#delete'

  get 'cards/show'
  get 'cards/:id', to: 'cards#show'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
