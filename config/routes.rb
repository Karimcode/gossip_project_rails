Rails.application.routes.draw do
  get 'welcome/hello'
  get 'team/display'
  get 'contact/display'
  get 'home/display'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  get 'city/show'
  get 'welcome/:id', to: 'welcome#hello'
  #get '/gossips/:gossip_id', to: 'gossips#display', as: 'my_gossip'
  #get '/users/:user_id', to: 'users#display', as: 'my_user'

  root 'home#display'
  get '/contact', to: 'contact#display'
  get '/team', to: 'team#display'

  resources  :gossips do
    resources   :comments
  end

  resources  :users
  resources   :city, only: [:show]

  resources :sessions, only: [:new, :create, :destroy]
end
