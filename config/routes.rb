Rails.application.routes.draw do
  get 'ticket/index'
  get 'query/index'
  get 'posts/index'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id', to: 'posts#show', constraint: { id: /\d+/}
  post 'posts/create', to: 'posts#create'
  get 'posts/edit/:id', to: 'posts#edit'
  post 'posts/update/:id', to: 'posts#update'
  get 'posts/delete/:id', to: 'posts#delete'

  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
